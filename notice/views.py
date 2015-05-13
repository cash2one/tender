#!usr/bin/env python
#coding: utf-8
from django.http import HttpResponse
from django.shortcuts import render_to_response,get_object_or_404
from django.template import RequestContext
from django.utils import simplejson
from django.core.paginator import Paginator, InvalidPage, EmptyPage

from msgstatistic.models import MsgStatistic
from msgstatistic.forms import UploadFileForm
from notice.models import Notice
from notice.models import Hotspot
from utils.constants import notice_type_dict
from utils.constants import notice_area_dict

from utils.utils import isTel, isMobile
import csv

from datetime import date, datetime, time
from xlrd import open_workbook, xldate_as_tuple

def index(request):
    retdir = {}
    notices = Notice.objects.order_by('-id')
    if 'query' in request.POST and request.POST['query']:
        query = request.POST['query']
        retdir['query'] = query
        notices = notices.filter(noticeid__icontains = query)
    if 'notice_name' in request.POST and request.POST['notice_name']:
        notice_name = request.POST['notice_name']
        retdir['notice_name'] = notice_name
        notices = notices.filter(notice_name__icontains = notice_name)
    orderField = request.POST.get('orderField', None)
    orderDirection = request.POST.get('orderDirection', None)
    if orderField != None and orderField != '' and orderDirection != None and orderDirection != '':
        retdir['orderField'] = orderField
        retdir['orderDirection'] = orderDirection
        if orderDirection == 'asc':
            notices = notices.order_by(orderField)
        elif orderDirection == 'desc':
            notices = notices.order_by('-' + orderField)
    if 'numPerPage' in request.POST and request.POST['numPerPage']:
        numPerPage = request.POST['numPerPage']
    else:
        numPerPage = '15'
    paginator = Paginator(notices, numPerPage)
    page = request.POST.get('pageNum', 1)
    try:
        if int(page) > paginator.num_pages:
            page = str(paginator.num_pages)
        notices = paginator.page(page)
    except (EmptyPage, InvalidPage):
        notices = paginator.page(paginator.num_pages)
    tmpdir = {'notices':notices, 'currentPage':page, 'numPerPage':numPerPage, 'notice_type_dict':notice_type_dict, 'notice_area_dict':notice_area_dict}
    retdir.update(tmpdir)
    return render_to_response('notice/basepage.html', retdir, context_instance=RequestContext(request))


def add(request):
    if request.POST:
        noticeid = request.POST.get('noticeid', None)
        notice_name = request.POST.get('notice_name', None)
        notice_area = request.POST.get('notice_area', None)
        notice_type = request.POST.get('notice_type', None)
        flag = request.POST.get('flag', None)
        desc = request.POST.get('desc', None)
        notice_content = request.POST.get('notice_content', None)
        
        '''验证重复公告编号'''
        notices = Notice.objects.filter(noticeid__iexact=noticeid)
        if notices:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','noticeindex'), "callbackType":request.POST.get('callbackType',None), "message":u'公告编号已经存在不能添加'}), mimetype='application/json')
        
        '''验证重复公告名称'''
        notices = Notice.objects.filter(notice_name__iexact=notice_name)
        if notices:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','noticeindex'), "callbackType":request.POST.get('callbackType',None), "message":u'公告名称已经存在不能添加'}), mimetype='application/json')
          
        notice = Notice(noticeid=noticeid, 
                        notice_name=notice_name, 
                        notice_area=notice_area, 
                        notice_type=notice_type, 
                        flag=flag, 
                        desc=desc, 
                        notice_content=notice_content)
        try:
            notice.save()
            return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','noticeindex'), "callbackType":request.POST.get('callbackType','closeCurrent'), "message":u'添加成功'}), mimetype='application/json')
        except Exception, e:
            print e
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','noticeindex'), "callbackType":request.POST.get('callbackType',None), "message":u'添加失败'}), mimetype='application/json')
    else:
        return render_to_response('notice/add.html', {'notice_type_dict':notice_type_dict, 'notice_area_dict':notice_area_dict}, context_instance=RequestContext(request))

def edit(request, id):
    notice = get_object_or_404(Notice, pk=int(id))
    if request.POST:
        notice.noticeid = request.POST.get('noticeid', None)
        notice.notice_name = request.POST.get('notice_name', None)
        notice.notice_area = request.POST.get('notice_area', None)
        notice.notice_type = request.POST.get('notice_type', None)
        notice.flag = request.POST.get('flag', None)
        notice.desc = request.POST.get('desc', None)
        notice.notice_content = request.POST.get('notice_content', None)
        notice.save()
        return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','noticeindex'), "callbackType":request.POST.get('callbackType','closeCurrent'), "message":u'编辑成功'}), mimetype='application/json')
    return render_to_response('notice/edit.html', {'notice': notice, 'notice_type_dict':notice_type_dict, 'notice_area_dict':notice_area_dict}, context_instance=RequestContext(request))


def delete(request, id):
    notice = Notice.objects.get(id=id)
    notice.delete()
    return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','noticeindex'), "callbackType":request.POST.get('callbackType',''), "message":u'删除成功'}), mimetype='application/json')


def selecteddelete(request):
    ids = request.POST.get('ids', None)
    if ids:
        notices = Notice.objects.extra(where=['id IN ('+ ids +')'])
        notices.delete()
        return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','noticeindex'), "callbackType":request.POST.get('callbackType',''), "message":u'选中项删除成功'}), mimetype='application/json')




'''
    热点管理
'''
def hotspot_index(request):
    retdir = {}
    hotspots = Hotspot.objects.order_by('-level')
    if 'query' in request.POST and request.POST['query']:
        query = request.POST['query']
        retdir['query'] = query
        hotspots = hotspots.filter(hotspotid__icontains = query)
    if 'hotspot_name' in request.POST and request.POST['hotspot_name']:
        hotspot_name = request.POST['hotspot_name']
        retdir['hotspot_name'] = hotspot_name
        hotspots = hotspots.filter(hotspot_name__icontains = hotspot_name)
    orderField = request.POST.get('orderField', None)
    orderDirection = request.POST.get('orderDirection', None)
    if orderField != None and orderField != '' and orderDirection != None and orderDirection != '':
        retdir['orderField'] = orderField
        retdir['orderDirection'] = orderDirection
        if orderDirection == 'asc':
            hotspots = hotspots.order_by(orderField)
        elif orderDirection == 'desc':
            hotspots = hotspots.order_by('-' + orderField)
    if 'numPerPage' in request.POST and request.POST['numPerPage']:
        numPerPage = request.POST['numPerPage']
    else:
        numPerPage = '15'
    paginator = Paginator(hotspots, numPerPage)
    page = request.POST.get('pageNum', 1)
    try:
        if int(page) > paginator.num_pages:
            page = str(paginator.num_pages)
        hotspots = paginator.page(page)
    except (EmptyPage, InvalidPage):
        hotspots = paginator.page(paginator.num_pages)
    tmpdir = {'hotspots':hotspots, 'currentPage':page, 'numPerPage':numPerPage}
    retdir.update(tmpdir)
    return render_to_response('notice/hotspot/basepage.html', retdir, context_instance=RequestContext(request))


def hotspot_add(request):
    if request.POST:
        hotspotid = request.POST.get('hotspotid', None)
        hotspot_name = request.POST.get('hotspot_name', None)
        level = request.POST.get('level', None)
        desc = request.POST.get('desc', None)
        
        '''验证重复热点编号'''
        hotspots = Hotspot.objects.filter(hotspotid__iexact=hotspotid)
        if hotspots:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','noticehotspotindex'), "callbackType":request.POST.get('callbackType',None), "message":u'热点编号已经存在不能添加'}), mimetype='application/json')
        
        '''验证重复热点名称'''
        hotspots = Hotspot.objects.filter(hotspot_name__iexact=hotspot_name)
        if hotspots:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','noticehotspotindex'), "callbackType":request.POST.get('callbackType',None), "message":u'热点名称已经存在不能添加'}), mimetype='application/json')
          
        hotspot = Hotspot(hotspotid=hotspotid, 
                        hotspot_name=hotspot_name, 
                        level=level, 
                        desc=desc)
        try:
            hotspot.save()
            return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','noticehotspotindex'), "callbackType":request.POST.get('callbackType','closeCurrent'), "message":u'添加成功'}), mimetype='application/json')
        except Exception, e:
            print e
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','noticehotspotindex'), "callbackType":request.POST.get('callbackType',None), "message":u'添加失败'}), mimetype='application/json')
    else:
        return render_to_response('notice/hotspot/add.html', {}, context_instance=RequestContext(request))

def hotspot_edit(request, id):
    hotspot = get_object_or_404(Hotspot, pk=int(id))
    if request.POST:
        hotspot.hotspotid = request.POST.get('hotspotid', None)
        hotspot.hotspot_name = request.POST.get('hotspot_name', None)
        hotspot.level = request.POST.get('level', None)
        hotspot.desc = request.POST.get('desc', None)
        hotspot.save()
        return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','noticehotspotindex'), "callbackType":request.POST.get('callbackType','closeCurrent'), "message":u'编辑成功'}), mimetype='application/json')
    return render_to_response('notice/hotspot/edit.html', {'hotspot': hotspot}, context_instance=RequestContext(request))


def hotspot_delete(request, id):
    hotspot = Hotspot.objects.get(id=id)
    hotspot.delete()
    return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','noticehotspotindex'), "callbackType":request.POST.get('callbackType',''), "message":u'删除成功'}), mimetype='application/json')


def hotspot_selecteddelete(request):
    ids = request.POST.get('ids', None)
    if ids:
        hotspots = Hotspot.objects.extra(where=['id IN ('+ ids +')'])
        hotspots.delete()
        return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','noticehotspotindex'), "callbackType":request.POST.get('callbackType',''), "message":u'选中项删除成功'}), mimetype='application/json')






