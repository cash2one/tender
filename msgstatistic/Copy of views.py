#!usr/bin/env python
#coding: utf-8
from django.http import HttpResponse
from django.shortcuts import render_to_response,get_object_or_404
from django.template import RequestContext
from django.utils import simplejson
from django.core.paginator import Paginator, InvalidPage, EmptyPage

from msgstatistic.models import MsgStatistic
from msgstatistic.forms import UploadFileForm

from utils.utils import isTel, isMobile
import csv

from datetime import date, datetime, time
from xlrd import open_workbook, xldate_as_tuple

def index(request):
    retdir = {}
    msgstatistics = MsgStatistic.objects.order_by('-id')
    if 'query' in request.POST and request.POST['query']:
        query = request.POST['query']
        retdir['query'] = query
        msgstatistics = msgstatistics.filter(account__icontains = query)
    if 'company_name' in request.POST and request.POST['company_name']:
        company_name = request.POST['company_name']
        retdir['company_name'] = company_name
        msgstatistics = msgstatistics.filter(company_name__icontains = company_name)
    orderField = request.POST.get('orderField', None)
    orderDirection = request.POST.get('orderDirection', None)
    if orderField != None and orderField != '' and orderDirection != None and orderDirection != '':
        retdir['orderField'] = orderField
        retdir['orderDirection'] = orderDirection
        if orderDirection == 'asc':
            msgstatistics = msgstatistics.order_by(orderField)
        elif orderDirection == 'desc':
            msgstatistics = msgstatistics.order_by('-' + orderField)
    if 'numPerPage' in request.POST and request.POST['numPerPage']:
        numPerPage = request.POST['numPerPage']
    else:
        numPerPage = 10
    paginator = Paginator(msgstatistics, numPerPage)
    page = request.POST.get('pageNum', 1)
    try:
        if int(page) > paginator.num_pages:
            page = str(paginator.num_pages)
        msgstatistics = paginator.page(page)
    except (EmptyPage, InvalidPage):
        msgstatistics = paginator.page(paginator.num_pages)
    tmpdir = {'msgstatistics':msgstatistics, 'currentPage':page, 'numPerPage':numPerPage}
    retdir.update(tmpdir)
    return render_to_response('msgstatistic/basepage.html', retdir, context_instance=RequestContext(request))


def add(request):
    if request.POST:
        account = request.POST.get('account', None)
        company_name = request.POST.get('company_name', None)
        legal_phone = request.POST.get('legal_phone', None)
        finance_phone = request.POST.get('finance_phone', None)
        handler_phone = request.POST.get('handler_phone', None)
        annual_time = request.POST.get('annual_time', None)
        address = request.POST.get('address', None)
        desc = request.POST.get('desc', None)
        '''验证重复帐号'''
        accounts = MsgStatistic.objects.filter(account__iexact=account)
        if accounts:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','msgstatisticindex'), "callbackType":request.POST.get('callbackType',None), "message":u'帐号已经存在不能添加'}), mimetype='application/json')
        else:
            msgstatistic = MsgStatistic(account=account, company_name=company_name, legal_phone=legal_phone, finance_phone=finance_phone, handler_phone=handler_phone, annual_time=annual_time, address=address, desc=desc)
        try:
            msgstatistic.save()
            return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','msgstatisticindex'), "callbackType":request.POST.get('callbackType','closeCurrent'), "message":u'添加成功'}), mimetype='application/json')
        except:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','msgstatisticindex'), "callbackType":request.POST.get('callbackType',None), "message":u'添加失败'}), mimetype='application/json')
    else:
        return render_to_response('msgstatistic/add.html')

def edit(request, id):
    msgstatistic = get_object_or_404(MsgStatistic, pk=int(id))
    if request.POST:
        msgstatistic.account = request.POST.get('account', None)
        msgstatistic.company_name = request.POST.get('company_name', None)
        msgstatistic.legal_phone = request.POST.get('legal_phone', None)
        msgstatistic.finance_phone = request.POST.get('finance_phone', None)
        msgstatistic.handler_phone = request.POST.get('handler_phone', None)
        msgstatistic.annual_time = request.POST.get('annual_time', None)
        msgstatistic.address = request.POST.get('address', None)
        msgstatistic.desc = request.POST.get('desc', None)
        msgstatistic.save()
        return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','msgstatisticindex'), "callbackType":request.POST.get('callbackType','closeCurrent'), "message":u'编辑成功'}), mimetype='application/json')
    return render_to_response('msgstatistic/edit.html', {'msgstatistic': msgstatistic})


def delete(request, id):
    msgstatistic = MsgStatistic.objects.get(id=id)
    msgstatistic.delete()
    return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','msgstatisticindex'), "callbackType":request.POST.get('callbackType',''), "message":u'删除成功'}), mimetype='application/json')


def selecteddelete(request):
    ids = request.POST.get('ids', None)
    if ids:
        msgstatistics = MsgStatistic.objects.extra(where=['id IN ('+ ids +')'])
        msgstatistics.delete()
        return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','msgstatisticindex'), "callbackType":request.POST.get('callbackType',''), "message":u'选中项删除成功'}), mimetype='application/json')


def autocomplete(request):
    if request.GET.has_key('q'):
        query = request.GET['q']
        if query != None:
            query = query.strip()
            msgstatistics = MsgStatistic.objects.filter(account__icontains=query)
            return HttpResponse('\n'.join(msgstatistic.account for msgstatistic in msgstatistics))
    return HttpResponse()
    

#
#
#
#def uploadfile(request):
#    if request.POST:
#        form = UploadFileForm(request.POST, request.FILES)
#        if request.FILES:     
#            f = request.FILES['file']
#            count = 0
#            while True:
#                line = f.readline()
#                # 跳过第一行
#                if count == 0:
#                    count = count + 1
#                    continue
#                line1 = ''
#                try:
#                    line1 = line.decode('utf-8-sig')
#                except:
#                    line1 = line.decode('gb2312')
#                if not line1 or line1 == '\r\n' or line1 =='\r' or line1 == '\n' or line1 == '':
#                    break
#                arg = line1.split(',')
#    
#                if arg[0]=='' or arg[0]==None :
#                    return render_to_response('file/error.html') #必填项为空
##                elif arg[2]=='' and (arg[3]=='\r\n' or arg[3]==''):
##                    return render_to_response('file/error.html') #至少有一个联系电话
##                elif (not arg[2]=='') and isTel(arg[2])==None and isMobile(arg[2])==None:
##                    return render_to_response('file/error.html') #电话号码有误
##                elif ((not arg[3]=='\r\n') and (not arg[3]=='')) and isTel(arg[3])==None and isMobile(arg[3])==None:
##                    return render_to_response('file/error.html') #电话号码有误
#                else:
#                    accounts = MsgStatistic.objects.filter(account__iexact=arg[0])
#                    if accounts:
#                        return render_to_response('file/error.html') #重复添加
#                    else:
#                        msgstatistic = MsgStatistic(account=arg[0], company_name=arg[1], legal_phone=arg[2], finance_phone=arg[3], handler_phone=arg[4], annual_time=arg[5], address=arg[6], desc=arg[7])
#                        msgstatistic.save()
#            f.close()
#        else:
#            return render_to_response('msgstatistic/uploadfail.html')            
#        return render_to_response('msgstatistic/uploadsuccess.html')
#    else:
#        form = UploadFileForm()
#    return render_to_response('msgstatistic/upload.html', {'form': form}, context_instance=RequestContext(request))



def uploadfile(request):
    if request.POST:
        form = UploadFileForm(request.POST, request.FILES)
        if request.FILES:     
            f = request.FILES['file']
            
            book = open_workbook(file_contents = f.read())
            try: #看是不是XLS的第一张表
                sheet = book.sheet_by_index(0)
            except:
                return render_to_response('file/message.html', {"message":u"数据不在XLS的第一张表!"}, context_instance=RequestContext(request)) 
            # 计算行数和列数
            nrows = sheet.nrows
            ncols = sheet.ncols
            print "nrows %d, ncols %d" % (nrows, ncols)
            
            # 遍历每一行，把第一行和第二行去掉
            for row_index in range(2, sheet.nrows):
                account = sheet.cell_value(row_index, 0)
                try:
                    s = sheet.cell_value(row_index, 1)
                    print s.__class__
                    company_name = sheet.cell_value(row_index, 1).decode('utf-8-sig')
                    print company_name.__class__
                except:
                    company_name = sheet.cell_value(row_index, 1).decode('gb2312')
                legal_phone = sheet.cell_value(row_index, 2)
                finance_phone = sheet.cell_value(row_index, 3)
                handler_phone = sheet.cell_value(row_index, 4)
                try:
                    date_value = xldate_as_tuple(sheet.cell(row_index, 5).value, book.datemode)
                    annual_time = datetime(*date_value)
                except:
                    return render_to_response('file/message.html', {"message":u"年检时间格式不对!"}, context_instance=RequestContext(request)) 
                try:
                    address = sheet.cell_value(row_index, 6).decode('utf-8-sig')
                except:
                    address = sheet.cell_value(row_index, 6).decode('gb2312')
                
                if account=='' or account==None or annual_time=='' or annual_time==None:
#                    return render_to_response('file/error.html') #必填项为空
                    return render_to_response('file/message.html', {"message":u"帐号或年检时间为空!"}, context_instance=RequestContext(request)) 
                else:
                    accounts = MsgStatistic.objects.filter(account__iexact=account)
                    if accounts:
                        return render_to_response('file/message.html', {"message":u"当前帐号已经存在!"}, context_instance=RequestContext(request)) 
                    else:
                        msgstatistic = MsgStatistic(account=account, company_name=company_name, legal_phone=legal_phone, finance_phone=finance_phone, handler_phone=handler_phone, annual_time=annual_time, address=address, desc='')
                        msgstatistic.save()
            f.close()
        else:
            return render_to_response('msgstatistic/uploadfail.html')            
        return render_to_response('msgstatistic/uploadsuccess.html')
    else:
        form = UploadFileForm()
    return render_to_response('msgstatistic/upload.html', {'form': form}, context_instance=RequestContext(request))

def downloadfile(request):
    response = HttpResponse(mimetype='text/csv')
    response['Content-Disposition'] = 'attachment; filename=msgstatistic_list.csv'
    writer = csv.writer(response)
    writer.writerow(['account', 'company_name', 'legal_phone', 'finance_phone', 'handler_phone', 'annual_time', 'address', 'desc'])
    msgstatistics = MsgStatistic.objects.all()
    for msgstatistic in msgstatistics:
        writer.writerow([msgstatistic.account,
                         msgstatistic.company_name.encode("gb2312"),
                         msgstatistic.legal_phone,
                         msgstatistic.finance_phone,
                         msgstatistic.handler_phone,
                         msgstatistic.annual_time,
                         msgstatistic.address.encode("gb2312"),
                         msgstatistic.desc.encode("gb2312")])
    return response





