#!usr/bin/env python
#coding: utf-8
from django.db import models
from django.contrib.auth.models import User
class UserProfile(models.Model):
    user = models.OneToOneField(User)
    
    user_type = models.IntegerField(default=0) # 用户类型。0:u'普通用户', 1:u'供应商', 2:u'普通管理员', 3:u'超级管理员'
    company = models.CharField(max_length=64, blank=True, null=True) # 公司名称
    product = models.CharField(max_length=64, blank=True, null=True) # 公司产品
    contact_user = models.CharField(max_length=64, blank=True, null=True) # 联系人
    contact_tel = models.CharField(max_length=64, blank=True, null=True) # 联系电话
    contact_phone = models.CharField(max_length=64, blank=True, null=True) # 手机号码
    start_time = models.DateTimeField(u"创建时间", auto_now_add=True) # 启用时间,格式为'0000-00-00 00:00:00'
    end_time = models.DateTimeField(u"修改时间", auto_now=True) # 禁用时间,格式为'0000-00-00 00:00:00'


'''
from django.db import models
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin
import datetime

class ProfileBase(type):
    def __new__(cls, name, bases, attrs):
        module = attrs.pop('__module__')
        parents = [b for b in bases if isinstance(b, ProfileBase)]
        if parents:
            fields = []
            for obj_name, obj in attrs.items():
                if isinstance(obj, models.Field):
                    fields.append(obj_name)
                User.add_to_class(obj_name, obj)
            UserAdmin.fieldsets = list(UserAdmin.fieldsets)
            UserAdmin.fieldsets.append((name, {'fields': fields}))
        return super(ProfileBase, cls).__new__(cls, name, bases, attrs)
        
class Profile(object):
    __metaclass__ = ProfileBase

class MyProfile(Profile):
    nickname = models.CharField(max_length = 255)
    birthday = models.DateTimeField(null = True, blank = True)
    city = models.CharField(max_length = 30, blank = True)
    university = models.CharField(max_length = 255, blank = True)
    
    def is_today_birthday(self):
        return self.birthday.date() == datetime.date.today()

'''    


    