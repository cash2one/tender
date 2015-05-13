#!usr/bin/env python
#coding: utf-8
from django.conf.urls.defaults import *
from django.conf import settings

urlpatterns = patterns('',
    url(r'^index/$', 'msgstatistic.views.index', name="msgstatistic_index"),
    url(r'^add/$', 'msgstatistic.views.add',name="msgstatistic_add"),
    url(r'^delete/(?P<id>\d+)/$', 'msgstatistic.views.delete',name="msgstatistic_delete"),
    url(r'^selecteddelete/$', 'msgstatistic.views.selecteddelete',name="msgstatistic_selecteddelete"),
    url(r'^edit/(?P<id>\d+)/$', 'msgstatistic.views.edit',name="msgstatistic_edit"),
    url(r'^autocomplete/$', 'msgstatistic.views.autocomplete', name = "msgstatistic_autocomplete"),
    
    url(r'^upload/$', 'msgstatistic.views.uploadfile', name = "msgstatistic_uploadfile"), 
    url(r'^download/$', 'msgstatistic.views.downloadfile', name = "msgstatistic_downloadfile"),
    
)