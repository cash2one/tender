#!usr/bin/env python
#coding: utf-8
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from notice.models import Notice
from notice.models import Hotspot
from utils.constants import account_usertype_dict
from utils.constants import notice_type_dict
from utils.constants import notice_area_dict
from utils.constants import date_range_dict
from account.forms import RegisterForm
from captcha.helpers import captcha_image_url
from captcha.models import CaptchaStore

import datetime


def index(request):
    return render_to_response('account/login.html', {}, context_instance=RequestContext(request))
    #return render_to_response('common/index.html', {'account_usertype_dict':account_usertype_dict}, context_instance=RequestContext(request))


def main(request):
    return render_to_response('common/main.html', {}, context_instance=RequestContext(request))

'''
    前台展示信息控制
'''
# 首页
def tender(request):
    retdir = {}
    retdir['base_type'] = 0
    hotspots = Hotspot.objects.order_by('-level')
    retdir['hotspots'] = hotspots
    notices = Notice.objects.order_by('-id')
    # 招标新闻
    notices_news = notices.filter(notice_type = 9)
    
    # 招标公告
    notices_notice = notices.filter(notice_type = 1)
    
    # 供应商信息
    users_provider = User.objects.all().filter(userprofile__user_type = 1)
    
    tmpdir = {'notices_news':notices_news, 'notices_notice':notices_notice, 'users_provider':users_provider, 
              'account_usertype_dict':account_usertype_dict, 
              'notice_area_dict':notice_area_dict, 
              'date_range_dict':date_range_dict}
    retdir.update(tmpdir)
    
    return render_to_response('tender/index.html', retdir, context_instance=RequestContext(request))


def tender_index(request, base_type, pageNum):
    retdir = {}
    
    retdir['base_type'] = int(base_type)
    hotspots = Hotspot.objects.order_by('-level')
    retdir['hotspots'] = hotspots
    notices = Notice.objects.order_by('-id')
    if int(base_type) == 1: # 招标公告
        notices = notices.filter(notice_type = 1)
    elif int(base_type) == 2: # 中标公告
        notices = notices.filter(notice_type = 2)
    elif int(base_type) == 3: # 招标变更
        notices = notices.filter(notice_type = 3)
    elif int(base_type) == 4: # 预审公告
        notices = notices.filter(notice_type = 4)
    elif int(base_type) == 5: # 电力项目
        notices = notices.filter(notice_type = 5)
    elif int(base_type) == 6: # 重点工程
        notices = notices.filter(notice_type = 6)
    elif int(base_type) == 7: # 法规中心
        notices = notices.filter(notice_type = 7)
    elif int(base_type) == 8: # 标书下载
        notices = notices.filter(notice_type = 8)
    elif int(base_type) == 9: # 招标新闻
        notices = notices.filter(notice_type = 9)
    elif int(base_type) == 10: # 联系我们
        pass
    elif int(base_type) == 12: # 信息搜索
        if 'KeyName' in request.GET and request.GET['KeyName']:
            KeyName = request.GET['KeyName']
            retdir['KeyName'] = KeyName
            notices = notices.filter(notice_name__icontains = KeyName)
        if 'search_area' in request.GET and request.GET['search_area']:
            search_area = request.GET['search_area']
            retdir['search_area'] = int(search_area)
            search_area = int(search_area)
            if search_area > 0:
                notices = notices.filter(notice_area__iexact = int(search_area))
        if 'date_range' in request.GET and request.GET['date_range']:
            date_range = request.GET['date_range']
            retdir['date_range'] = int(date_range)
            date_range = int(date_range)
            if date_range > 0:
                current_datetime = datetime.datetime.now()
                recall_datetime = current_datetime - datetime.timedelta(days=date_range)
                notices = notices.filter(release_time__gte = recall_datetime, release_time__lte = current_datetime)
        
        
    if 'numPerPage' in request.POST and request.POST['numPerPage']:
        numPerPage = request.POST['numPerPage']
    else:
        numPerPage = 15
    paginator = Paginator(notices, numPerPage)
    currentPage = int(pageNum)
    try:
        if int(currentPage) > paginator.num_pages:
            currentPage = str(paginator.num_pages)
        notices = paginator.page(currentPage)
    except (EmptyPage, InvalidPage):
        notices = paginator.page(paginator.num_pages)
    tmpdir = {'notices':notices, 'currentPage':currentPage, 'numPerPage':numPerPage, 
              'notice_type_dict':notice_type_dict, 
              'account_usertype_dict':account_usertype_dict, 
              'notice_area_dict':notice_area_dict, 
              'date_range_dict':date_range_dict}
    retdir.update(tmpdir)
    return render_to_response('tender/index.html', retdir, context_instance=RequestContext(request))

    
#    tmpdir = {'notices':notices, 'currentPage':page, 'numPerPage':numPerPage, 'notice_type_dict':notice_type_dict}

#    tmpdir = {'notices':notices, 'notice_type_dict':notice_type_dict}
#    retdir.update(tmpdir)
#    return render_to_response('tender/index.html', retdir, context_instance=RequestContext(request))




# 招标公告
def tender_notice(request):
    return render_to_response('tender/tender_notice.html', {}, context_instance=RequestContext(request))

# 中标公告
def tender_accepted_notice(request):
    return render_to_response('tender/tender_accepted_notice.html', {}, context_instance=RequestContext(request))

# 招标变更
def tender_change(request):
    return render_to_response('tender/tender_change.html', {}, context_instance=RequestContext(request))

# 预审公告
def tender_pretrial(request):
    return render_to_response('tender/tender_pretrial.html', {}, context_instance=RequestContext(request))

# 电力项目
def tender_electric(request):
    return render_to_response('tender/tender_electric.html', {}, context_instance=RequestContext(request))

# 重点工程
def tender_keystone(request):
    return render_to_response('tender/tender_keystone.html', {}, context_instance=RequestContext(request))

# 法规中心
def tender_policy(request):
    return render_to_response('tender/tender_policy.html', {}, context_instance=RequestContext(request))

# 标书下载
def tender_document(request):
    return render_to_response('tender/tender_document.html', {}, context_instance=RequestContext(request))

# 联系我们
def tender_about(request):
    return render_to_response('tender/tender_about.html', {}, context_instance=RequestContext(request))

## 详细信息
#def tender_detail(request):
#    return render_to_response('tender/detail/tender_detail.html', {}, context_instance=RequestContext(request))
# 详细信息
def tender_detail(request, id):
    retdir = {}
    retdir['base_type'] = 13
    hotspots = Hotspot.objects.order_by('-level')
    retdir['hotspots'] = hotspots
    notices = Notice.objects.order_by('-id')
    # 招标新闻
    notices_news = notices.filter(notice_type = 9)
    
    # 招标公告
    notices_notice = notices.filter(notice_type = 1)
    
    # 供应商信息
    users_provider = User.objects.all().filter(userprofile__user_type = 1)
    
    notice = Notice.objects.get(id = int(id))
    
    tmpdir = {'notices_news':notices_news, 'notices_notice':notices_notice, 'users_provider':users_provider, 'notice':notice, 
              'account_usertype_dict':account_usertype_dict, 
              'notice_area_dict':notice_area_dict, 
              'date_range_dict':date_range_dict}
    retdir.update(tmpdir)
    
    return render_to_response('tender/index.html', retdir, context_instance=RequestContext(request))





