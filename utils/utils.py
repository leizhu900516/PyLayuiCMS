# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18
from flask import redirect,request
from utils.token import  cookiesdict
from functools import wraps
from setting import cookiename
import hashlib
import time
def login_auth(f):
    '''
    登陆装饰器
    :param f:
    :return:
    '''
    @wraps(f)
    def decorator():
        cookie = request.cookies.get(cookiename)
        if cookie in cookiesdict:
            if cookiesdict[cookie] <int(time.time()):
                cookiesdict.__delitem__(cookie)
            return f()
        else:
            return redirect('/login.html')
    return decorator



def saltmd5(passwd):
    _m = hashlib.md5()
    _m.update(passwd.encode('utf-8'))
    md5passwd = _m.hexdigest()
    print(md5passwd)
    return md5passwd