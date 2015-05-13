#!usr/bin/env python
#coding: utf-8
'''
Created on 2012-7-11

@author: jingwen.wu
'''

from django import forms

class UploadFileForm(forms.Form):
    title = forms.CharField(max_length=50)
    file  = forms.FileField()
