#!usr/bin/env python
#coding: utf-8
from django.conf.urls.defaults import *
from django.conf import settings

urlpatterns = patterns('',
    url(r'^index/$', 'notice.views.index', name="notice_index"),
    url(r'^add/$', 'notice.views.add',name="notice_add"),
    url(r'^delete/(?P<id>\d+)/$', 'notice.views.delete',name="notice_delete"),
    url(r'^selecteddelete/$', 'notice.views.selecteddelete',name="notice_selecteddelete"),
    url(r'^edit/(?P<id>\d+)/$', 'notice.views.edit',name="notice_edit"),
    
    url(r'^hotspot_index/$', 'notice.views.hotspot_index', name="notice_hotspot_index"),
    url(r'^hotspot_add/$', 'notice.views.hotspot_add',name="notice_hotspot_add"),
    url(r'^hotspot_delete/(?P<id>\d+)/$', 'notice.views.hotspot_delete',name="notice_hotspot_delete"),
    url(r'^hotspot_selecteddelete/$', 'notice.views.hotspot_selecteddelete',name="notice_hotspot_selecteddelete"),
    url(r'^hotspot_edit/(?P<id>\d+)/$', 'notice.views.hotspot_edit',name="notice_hotspot_edit"),
    
)