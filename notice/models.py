#!usr/bin/env python
#coding: utf-8
from django.db import models

class Notice(models.Model):
    noticeid = models.CharField(max_length=64) # 公告编号，唯一标识。
    notice_name = models.CharField(max_length=64) # 公告名称。
    notice_content = models.TextField() # 公告内容。
    notice_area = models.IntegerField(default=0) # 所属地区。
    notice_type = models.IntegerField(default=0) # 公告类型。
    flag = models.IntegerField(default=0) # 是否对外公布。0：是；1：否
    desc = models.CharField(max_length=64, blank=True, null=True) # 备注。
    release_time = models.DateTimeField(auto_now_add=True) # 发布日期。
    start_time = models.DateTimeField(u"创建时间", auto_now_add=True) # 启用时间,格式为'0000-00-00 00:00:00'
    end_time = models.DateTimeField(u"修改时间", auto_now=True) # 禁用时间,格式为'0000-00-00 00:00:00'
    
    def __unicode__(self):
        return self.noticeid


class Hotspot(models.Model):
    hotspotid = models.CharField(max_length=64) # 热点编号，唯一标识。
    hotspot_name = models.CharField(max_length=64) # 热点名称。
    level = models.IntegerField(default=0) # 热点级别。
    desc = models.CharField(max_length=64, blank=True, null=True) # 备注。
    start_time = models.DateTimeField(u"创建时间", auto_now_add=True) # 启用时间,格式为'0000-00-00 00:00:00'
    end_time = models.DateTimeField(u"修改时间", auto_now=True) # 禁用时间,格式为'0000-00-00 00:00:00'
    
    def __unicode__(self):
        return self.hotspotid




# 仅用于页面显示
class NoticeExtend():
    def __init__(self):
        self.id = None
        self.noticeid = None
        self.notice_name = None
        self.notice_content = None
        self.notice_area = None
        self.notice_type = None
        self.flag = None
        self.desc = None
        self.release_time = None


def notice2Extend(notices):
    notice_list = []
    for item in notices:
        notice_list.append(getNotice(item.id))
    return notice_list

# 获取用户
def getNotice(notice_id):
    notice = Notice.objects.get(id=notice_id)
    notice_tmp = NoticeExtend()
    notice_tmp.id = notice.id
    notice_tmp.noticeid = notice.noticeid
    notice_tmp.notice_name = notice.notice_name
    
    notice_tmp.notice_content = notice.notice_content
    notice_tmp.notice_area = notice.notice_area
    notice_tmp.notice_type = notice.notice_type
    notice_tmp.flag = notice.flag
    notice_tmp.desc = notice.desc
    notice_tmp.release_time = notice.release_time
    return notice_tmp
    


