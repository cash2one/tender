#!usr/bin/env python
#coding: utf-8
from django.db import models

class MsgStatistic(models.Model):
    account = models.CharField(max_length=64) # 帐号
    company_name = models.CharField(max_length=64) # 单位名称
    legal_phone = models.CharField(max_length=64, blank=True) # 法人电话
    finance_phone = models.CharField(max_length=64, blank=True) # 财务主管电话
    handler_phone = models.CharField(max_length=64, blank=True) # 经办人员电话
    annual_time = models.DateTimeField(blank=True, null=True) # 年检日期，格式为'0000-00-00 00:00:00'
    address = models.CharField(max_length=255, blank=True, null=True) # 通信地址
    desc = models.CharField(max_length=255, blank=True, null=True) # 备注
    start_time = models.DateTimeField(u"创建时间", auto_now_add=True) # 启用时间,添加此机房的时间，格式为'0000-00-00 00:00:00'
    end_time = models.DateTimeField(u"修改时间", auto_now=True) # 禁用时间,停用此机房的时间，格式为'0000-00-00 00:00:00'
    
    def __unicode__(self):
        return self.account
