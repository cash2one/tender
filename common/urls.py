#!usr/bin/env python
#coding: utf-8
from django.conf.urls.defaults import *
from django.conf import settings

urlpatterns = patterns('',
    url(r'^$', 'common.views.index',name="index"),
    url(r'^main/$', 'common.views.main', name="common_main"),
    
    # 前台展示信息控制
    # 首页展示
    url(r'^tender_index/(?P<base_type>\d+)/(?P<pageNum>\d+)/$', 'common.views.tender_index', name="tender_index_index"),
    
    # 招标公告
    url(r'^tender_notice/$', 'common.views.tender_notice', name="tender_notice"),
    
    # 中标公告
    url(r'^tender_accepted_notice/$', 'common.views.tender_accepted_notice', name="tender_accepted_notice"),
    
    # 招标变更
    url(r'^tender_change/$', 'common.views.tender_change', name="tender_change"),
    
    # 预审公告
    url(r'^tender_pretrial/$', 'common.views.tender_pretrial', name="tender_pretrial"),
    
    # 电力项目
    url(r'^tender_electric/$', 'common.views.tender_electric', name="tender_electric"),
    
    # 重点工程
    url(r'^tender_keystone/$', 'common.views.tender_keystone', name="tender_keystone"),
    
    # 法规中心
    url(r'^tender_policy/$', 'common.views.tender_policy', name="tender_policy"),
    
    # 标书下载
    url(r'^tender_document/$', 'common.views.tender_document', name="tender_document"),
    
    # 联系我们
    url(r'^tender_about/$', 'common.views.tender_about', name="tender_about"),
    
    # 详细信息
    url(r'^tender_detail/(?P<id>\d+)/$', 'common.views.tender_detail', name="tender_detail"),
    
    
)