#!usr/bin/env python
#coding: utf-8
from account.models import UserProfile
from captcha.helpers import captcha_image_url
from captcha.models import CaptchaStore
from django.contrib import messages
from django.contrib.auth import authenticate, login as auth_login, \
    logout as auth_logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.hashers import make_password
from django.contrib.auth.models import User
from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext, loader
from django.utils import simplejson
from django.utils.translation import ugettext_lazy as _
from forms import *
from log.models import Log
from notice.models import Hotspot
from rest_framework.authtoken.models import Token
from tender.settings import DEFAULT_FROM_EMAIL
from utils.constants import account_usertype_dict
from utils.utils import send_mail
import ldap


from_email = DEFAULT_FROM_EMAIL




# 导入在forms.py 中定义的所有表单类。

@login_required
def index(request):
    retdir = {}
    users = User.objects.order_by('-id')
    if 'query' in request.POST and request.POST['query']:
        query = request.POST['query']
        retdir['query'] = query
        users = users.filter(username__icontains = query)
    if 'numPerPage' in request.POST and request.POST['numPerPage']:
        numPerPage = request.POST['numPerPage']
    else:
        numPerPage = '15'
    paginator = Paginator(users, numPerPage)
    page = request.POST.get('pageNum', 1)
    try:
        if int(page) > paginator.num_pages:
            page = str(paginator.num_pages)
        users = paginator.page(page)
    except (EmptyPage, InvalidPage):
        users = paginator.page(paginator.num_pages)
    tmpdir = {'users':users,'currentPage':page, 'numPerPage':numPerPage, 'account_usertype_dict':account_usertype_dict}
    retdir.update(tmpdir)
    return render_to_response('account/welcome.html', retdir, context_instance=RequestContext(request))
    

@login_required
def info(request, id):
    user = get_object_or_404(User, pk=int(id))
    return render_to_response('account/info.html', {'user': user, 'account_usertype_dict':account_usertype_dict}, context_instance=RequestContext(request))

@login_required
def register(request):

    if request.POST:
        username = request.POST.get('username', None)
        password = request.POST.get('password', None)
        confirmpwd = request.POST.get('confirmpwd', None)
        email = request.POST.get('email', None)
        user_type = request.POST.get('user_type', None)
        company = request.POST.get('company', None)
        product = request.POST.get('product', None)
        contact_user = request.POST.get('contact_user', None)
        contact_tel = request.POST.get('contact_tel', None)
        contact_phone = request.POST.get('contact_phone', None)
        
        '''验证重复帐号名'''
        usernames = User.objects.filter(username__iexact=username)
        if usernames:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'用户名已经存在不能添加', "info":u'用户名已经存在不能添加',"result":u'用户名已经存在不能添加'}), mimetype='application/json')
        
#        '''验证用户名是否存在于LDAP中并验证是否是创建用于访问Django REST Framework的特殊用户'''
#        if not add_validate_ldap(username) and username != 'autonavi&token':
#            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'用户名无效不能填加'}), mimetype='application/json')
        
        '''验证两次输入密码是否一致'''
        if password != confirmpwd:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'两次密码输入不一致', "info":u'两次密码输入不一致',"result":u'两次密码输入不一致'}), mimetype='application/json')
        
        '''验证重复email'''
        emails = User.objects.filter(email__iexact=email)
        if emails:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'EMAIL已经存在不能添加', "info":u'EMAIL已经存在不能添加',"result":u'EMAIL已经存在不能添加'}), mimetype='application/json')
        if password != None and password != '':
            password = make_password(password, salt=None, hasher='default')
            user = User(username=username, password=password, email=email)
        else:
            user = User(username=username, email=email)
        user.save()
        
        userprofile = UserProfile(user=user, 
                                  user_type=user_type, 
                                  company=company, 
                                  product=product, 
                                  contact_user=contact_user, 
                                  contact_tel=contact_tel, 
                                  contact_phone=contact_phone)
        userprofile.save()
        
        
        '''用户添加成功后给它发送邮件提示'''
        subject = u'创建用户成功'
        to_mail_list = ['dashan.yin@autonavi.com', 'shandayin@foxmail.com']
        # 定义邮件内容
        email = u"您好，现在已为您创建了登录系统的用户！"
        url = u"系统地址: 127.0.0.1"
        loginusername = u"用户名: " + user.username
        loginpassword = u"密码为公司邮件系统中的密码"
        body = loader.render_to_string('account/mail.html', {'email':email, 'url':url, 'loginusername':loginusername, 'loginpassword':loginpassword})
        send_mail(subject, body, from_email, to_mail_list, html="text/html")
        
        Log(username=request.user.username, content="execute register user:" + username + " success!", level=1).save()
        return HttpResponse(simplejson.dumps({"statusCode":200, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType','closeCurrent'), "message":u'添加成功'}), mimetype='application/json')
    else:
        return render_to_response('account/register.html', {'account_usertype_dict':account_usertype_dict})
    
    
def register_test(request):
    retdir = {}
    retdir['base_type'] = 11 # 用户注册
    hotspots = Hotspot.objects.order_by('-level')
    retdir['hotspots'] = hotspots
    #刷新验证码
    if request.GET.get('newsn')=='1':
        csn = CaptchaStore.generate_key()
        cimageurl = captcha_image_url(csn)
        return HttpResponse(cimageurl)
    if request.POST:
        form = RegisterForm(request.POST)

        # Validate the form: the captcha field will automatically
        # check the input
        if form.is_valid():
            human = True
            username = request.POST.get('username', None)
            password = request.POST.get('password', None)
            confirmpwd = request.POST.get('confirmpwd', None)
            email = request.POST.get('email', None)
            user_type = request.POST.get('user_type', None)
            company = request.POST.get('company', None)
            product = request.POST.get('product', None)
            contact_user = request.POST.get('contact_user', None)
            contact_tel = request.POST.get('contact_tel', None)
            contact_phone = request.POST.get('contact_phone', None)
            tender_protocol = request.POST.get('tender_protocol', None)
            
            '''验证是否接受网站用户服务协议'''
            if tender_protocol != 'on':
                return HttpResponse(simplejson.dumps({"statusCode":302, "url":"", "message":u'没有接受网站用户服务协议'}), mimetype='application/json')
            
            '''验证重复帐号名'''
            usernames = User.objects.filter(username__iexact=username)
            if usernames:
                return HttpResponse(simplejson.dumps({"statusCode":302, "url":"", "message":u'用户名已经存在不能添加'}), mimetype='application/json')
            
            '''验证两次输入密码是否一致'''
            if password != confirmpwd:
                return HttpResponse(simplejson.dumps({"statusCode":302, "url":"", "message":u'两次密码输入不一致'}), mimetype='application/json')
        
            '''验证重复email'''
            emails = User.objects.filter(email__iexact=email)
            if emails:
                return HttpResponse(simplejson.dumps({"statusCode":302, "url":"", "message":u'EMAIL已经存在不能添加'}), mimetype='application/json')
            if password != None and password != '':
                password = make_password(password, salt=None, hasher='default')
                user = User(username=username, password=password, email=email)
            else:
                user = User(username=username, email=email)
            user.save()
            
            userprofile = UserProfile(user=user, 
                                      user_type=1, 
                                      company=company, 
                                      product=product, 
                                      contact_user=contact_user, 
                                      contact_tel=contact_tel, 
                                      contact_phone=contact_phone)
            userprofile.save()
            retdir['base_type'] = 0
            return HttpResponse(simplejson.dumps({"statusCode":200, "url":"/tender/", "message":u'注册成功，重新登录后生效！'}), mimetype='application/json')
            #return render_to_response('tender/index.html', retdir, context_instance=RequestContext(request))
        else:
            # 验证码错误
            return HttpResponse(simplejson.dumps({"statusCode":302, "url":"", "message":u'验证码错误请重新输入！'}), mimetype='application/json')
        
    else:
        form = RegisterForm()
    retdir['form'] = form
    return render_to_response('tender/index.html', retdir, context_instance=RequestContext(request))

    #return render_to_response('account/base_register.html', locals())
    

@login_required
def edit(request, id):
    user = get_object_or_404(User,pk=int(id))
    userprofile = get_object_or_404(UserProfile,user_id=int(id))
    if request.POST:
        email = request.POST.get('email', None)
        '''修改操作验证重复email'''
        users = User.objects.filter(email__iexact=email)
        # 去掉本身的user
        users = users.exclude(email__iexact=user.email)
        if users:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'EMAIL已经存在不能添加', "info":u'EMAIL已经存在不能添加',"result":u'EMAIL已经存在不能添加'}), mimetype='application/json')

        user.email = email
        password = request.POST.get('password', None)
        confirmpwd = request.POST.get('confirmpwd', None)
        '''验证两次输入密码是否一致'''
        if password != confirmpwd:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'两次密码输入不一致', "info":u'两次密码输入不一致',"result":u'两次密码输入不一致'}), mimetype='application/json')
        if password != None and password != '':
            password = make_password(password, salt=None, hasher='default')
            user.password = password
        
        user_type = request.POST.get('user_type', None)
        if user_type != None and user_type != '':
            userprofile.user_type = user_type
        userprofile.company = request.POST.get('company', None)
        userprofile.product = request.POST.get('product', None)
        userprofile.contact_user = request.POST.get('contact_user', None)
        userprofile.contact_tel = request.POST.get('contact_tel', None)
        userprofile.contact_phone = request.POST.get('contact_phone', None)
        user.save()
        userprofile.save()
            
        Log(username=request.user.username, content="execute edit user:" + user.username + " success!", level=1).save()
        return HttpResponse(simplejson.dumps({"status":1, "statusCode":200, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType','closeCurrent'), "message":u'编辑成功', "info":u'编辑成功',"result":u'编辑成功'}), mimetype='application/json')
    
    retdir = {'user': user, 'account_usertype_dict':account_usertype_dict}
    return render_to_response('account/edit.html', retdir, context_instance=RequestContext(request))
    
        
def login(request):
    '''登陆视图'''
    template_var={}
    form = LoginForm()
    if request.method == 'POST':
        form = LoginForm(request.POST.copy())
        if form.is_valid():
            ret = False
            ret = _login(request,form.cleaned_data["username"],form.cleaned_data["password"])
            if ret:
                # 获取登录IP
                RemoteIp = request.META.get('REMOTE_ADDR')
                Log(username=request.user.username, content="execute login user:" + request.user.username + " ip:" + RemoteIp + " success!", level=1).save()
                if request.user.userprofile.user_type == 3: # 超级管理员
                    return render_to_response("common/index.html", {'account_usertype_dict':account_usertype_dict}, context_instance=RequestContext(request))
                else: # 其他人员
                    retdir = {}
                    retdir['base_type'] = 0
                    hotspots = Hotspot.objects.order_by('-level')[:10]
                    retdir['hotspots'] = hotspots
                    retdir['account_usertype_dict'] = account_usertype_dict
                    return render_to_response('tender/index.html', retdir, context_instance=RequestContext(request))
            else:
                vardict = {
                    "message": "登录失败！"
                }
                Log(username=form.cleaned_data["username"], content="execute login user error!", level=1).save()
                return render_to_response("account/login.html", vardict, context_instance=RequestContext(request))
                
    template_var["form"]=form        
    return render_to_response("account/login.html", template_var, context_instance=RequestContext(request))


def _login(request,username,password):
#    if username == 'admin':
#        pass
#    else:
#        # LDAP验证
#        if login_ldap(username,password):
#            pass
#        else:
#            return False
    '''登陆核心方法'''
    ret = False
    user = authenticate(username=username,password=password)
    if user:
        if user.is_active:
            auth_login(request, user)
            ret = True
        else:
            messages.add_message(request, messages.INFO, _(u'用户没有激活'))
    else:
        messages.add_message(request, messages.INFO, _(u'用户不存在'))
    return ret

@login_required
def logout(request):
    username = request.user.username
    user_type = request.user.userprofile.user_type
    '''注销视图'''
    auth_logout(request)
    Log(username=username, content="execute logout user success!", level=1).save()
    if user_type == 3: # 超级管理员
        return render_to_response("account/login.html", {}, context_instance=RequestContext(request))
    else: # 其他人员
        retdir = {}
        retdir['base_type'] = 0
        hotspots = Hotspot.objects.order_by('-level')[:10]
        retdir['hotspots'] = hotspots
        # HttpResponseRedirect（）只有一个参数，就是要转向的web page， 
        # 要带参数的话还是用render_to_response(“****.html”, {"web_page_variable":parameters})
        # 或者用get传 递参数
        #return HttpResponseRedirect('/tender/')
        return render_to_response('tender/index.html', retdir, context_instance=RequestContext(request))
    

@login_required
def delete(request,id):
    user = User.objects.get(id=id)
    if request.user.is_authenticated():
        if request.user.username == user.username:
            return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'不能删除自己'}), mimetype='application/json')
        else:
            Log(username=request.user.username, content="execute delete user:" + user.username + " success!", level=1).save()
            user.delete()
    return HttpResponse(simplejson.dumps({"status":1, "statusCode":200, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'删除成功', "info":u'删除成功',"result":u'删除成功'}), mimetype='application/json')

@login_required
def selecteddelete(request):
    ids = request.POST.get('ids', None)
    if ids:
        users = User.objects.extra(where=['id IN ('+ ids +')'])
        for user in users:
            if request.user.username == user.username:
                return HttpResponse(simplejson.dumps({"statusCode":302, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'选中的用户组中包含自己不能批量删除'}), mimetype='application/json')
            Log(username=request.user.username, content="execute selecteddelete user:" + user.username + " success!", level=1).save()
        users.delete()
        return HttpResponse(simplejson.dumps({"status":1, "statusCode":200, "navTabId":request.POST.get('navTabId','accountindex'), "callbackType":request.POST.get('callbackType',None), "message":u'删除成功', "info":u'删除成功',"result":u'删除成功'}), mimetype='application/json')


#'''
#** LDAP登录认证
#'''
#def login_ldap(username, password):
#    ldapconf = get_ldapconf()
#    if ldapconf == None:
#        return False
#    flag = False
#    try:
##        Server = "ldap://10.2.145.102:389"
##        baseDN = "dc=autonavi,dc=com"
##        searchScope = ldap.SCOPE_SUBTREE
##        searchFilter = "sAMAccountName=" + username
##        username = 'autonavi\\' + username
#        Server = ldapconf.server
#        baseDN = ldapconf.base_dn
#        searchScope = ldap.SCOPE_SUBTREE
#        searchFilter = ldapconf.loginname + "=" + username
#        username = ldapconf.domainname + "\\" + username
#        retrieveAttributes = None
#        conn = ldap.initialize(Server)
#        conn.set_option(ldap.OPT_REFERRALS, 0)
#        conn.protocol_version = ldap.VERSION3
#        conn.simple_bind_s(username, password)
#        print "connect ldap success"
#        flag = True
#    except ldap.LDAPError, e:
#        flag = False
#    return flag
#
#
#'''
#** 添加用户时认证LDAP中是否有该用户名
#'''
#def add_validate_ldap(validateusername):
#    ldapconf = get_ldapconf()
#    if ldapconf == None:
#        return False
#    username = ldapconf.username
#    password = ldapconf.password
#    flag = False
#    try:
#        Server = ldapconf.server
#        baseDN = ldapconf.base_dn
#        searchScope = ldap.SCOPE_SUBTREE
#        searchFilter = ldapconf.loginname + "=" + validateusername
#        username = ldapconf.domainname + "\\" + username
#        retrieveAttributes = None
#        conn = ldap.initialize(Server)
#        conn.set_option(ldap.OPT_REFERRALS, 0)
#        conn.protocol_version = ldap.VERSION3
#        conn.simple_bind_s(username, password)
#        print "connect ldap success"
#        ldap_result_id = conn.search(baseDN, searchScope, searchFilter, retrieveAttributes)
#        result_set = []
#        while 1:
#            result_type, result_data = conn.result(ldap_result_id, 0)
#            if(result_data == []):
#                break
#            else:
#                if result_type == ldap.RES_SEARCH_ENTRY:
#                    result_set.append(result_data)
#                    Name,Attrs = result_data[0]
#                    if hasattr(Attrs, 'has_key') and Attrs.has_key('mail'):
#                        print Attrs['mail'][0]
#                    if hasattr(Attrs, 'has_key') and Attrs.has_key('sAMAccountName'):
#                        print Attrs['sAMAccountName'][0]
#                    flag = True  
#        
#    except ldap.LDAPError, e:
#        flag = False
#    return flag
#


@login_required
def searchback_role(request):
    pass
#    retdir = {}
#    roles = Role.objects.order_by('-id')
#    if 'query' in request.POST and request.POST['query']:
#        query = request.POST['query']
#        retdir['query'] = query
#        roles = roles.filter(role_name__icontains = query)
#    if 'numPerPage' in request.POST and request.POST['numPerPage']:
#        numPerPage = request.POST['numPerPage']
#    else:
#        numPerPage = 10
#    paginator = Paginator(roles, numPerPage)
#    page = request.POST.get('pageNum', 1)
#    try:
#        if int(page) > paginator.num_pages:
#            page = str(paginator.num_pages)
#        roles = paginator.page(page)
#    except (EmptyPage, InvalidPage):
#        roles = paginator.page(paginator.num_pages)
#    tmpdir = {'roles':roles,'currentPage':page, 'numPerPage':numPerPage}
#    retdir.update(tmpdir)
#    return render_to_response('account/searchback.html', retdir)


def autocomplete(request):
    if request.GET.has_key('q'):
        query = request.GET['q']
        if query != None:
            query = query.strip()
            users = User.objects.filter(username__icontains=query)
            return HttpResponse('\n'.join(user.username for user in users))
    return HttpResponse()
    

