# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18
from flask import redirect,request
from utils.token import  cookiesdict
from functools import wraps
from setting import cookiename,mysqlconfig
import hashlib
import time
from utils.db import MysqlHandle
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



def initsolgan(f):
    '''
    初始化主页模版标题信息
    :param f:
    :return:
    '''
    @wraps(f)
    def decorator(*args,**kwargs):
        data = {}
        mysqlhandle = MysqlHandle(**mysqlconfig)
        __result = mysqlhandle.select("select * from plc_slogan",ret='all')
        __erweima = mysqlhandle.select("select * from plc_images where id=3")
        __link = mysqlhandle.select("select * from plc_friend_link",ret="all")
        for i in __result:
            data[i['id']] = i['title']
        kwargs['public_slogan'] = data
        kwargs['link'] = __link
        kwargs.setdefault('images',{})['erweima'] = __erweima.get("imageurl")
        return f(*args,**kwargs)
    return decorator



def saltmd5(passwd):
    _m = hashlib.md5()
    _m.update(passwd.encode('utf-8'))
    md5passwd = _m.hexdigest()
    print(md5passwd)
    return md5passwd


def get_table_data(sql,select_or_update='select',ret='1'):
    '''
    获取表数据
    :return:
    '''
    mysqlhandle = MysqlHandle(**mysqlconfig)
    if ret == "all":
        _data = getattr(mysqlhandle,select_or_update)(sql,ret="all")
    else:
        _data = getattr(mysqlhandle, select_or_update)(sql, ret="1")
    return  _data