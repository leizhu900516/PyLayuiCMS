# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18

from flask import Blueprint,render_template,request,jsonify,make_response
from utils.db import MysqlHandle
from utils.utils import saltmd5,initsolgan
import time
from utils.token import  cookiesdict
from setting import mysqlconfig,cookiename
import uuid
import json
home = Blueprint('home',__name__)

@home.route("/")
@initsolgan
def homes(*args,**kw):
    data = {}
    data.update(kw)
    mysqlhandle = MysqlHandle(**mysqlconfig)
    #图片
    images = mysqlhandle.select("select * from plc_images",ret='all')
    for i in images:
        if i['page_location']=="home.slide":
            data.setdefault("homeslide",[]).append(i['imageurl'])
    # 产品
    products = mysqlhandle.select("select * from plc_products",ret='all')
    for i in products:
        data.setdefault('homeproduct',[]).append(i)
    #服务
    service = mysqlhandle.select("select * from plc_service",ret='all')
    for i in service:
        data.setdefault('homeservice',[]).append([i['title'],i['abstract'],i['show_image']])
    return render_template('front_end/index.html',data = data)


@home.route("/about.html")
@initsolgan
def about(*args,**kw):
    return render_template('front_end/about.html',data=kw)


@home.route("/product.html")
@initsolgan
def product(*args,**kw):
    mysqlhandle = MysqlHandle(**mysqlconfig)
    products = mysqlhandle.select("select * from plc_products",ret='all')
    return render_template('front_end/product.html',products = products,
                           data = kw)


@home.route("/news.html")
@initsolgan
def news(*args,**kw):
    page = int(request.args.get("page",1))
    limit = int(request.args.get('limit',16))
    mysqlhandle = MysqlHandle(**mysqlconfig)
    news = mysqlhandle.select("select * from plc_news limit {0},{1}".format(
        (page-1)*limit,page*limit)
        ,ret='all')
    newscount = mysqlhandle.select("select count(1) from plc_news")['count(1)']
    print(newscount)
    return render_template('front_end/news.html',data = kw,
                           news = news,newscount = newscount)

@home.route("/news/<int:nid>.html")
@initsolgan
def newsdetail(*args,**kw):
    nid = kw.get('nid')
    mysqlhandle = MysqlHandle(**mysqlconfig)

    newsinfo = mysqlhandle.select("select * from plc_news where id={nid}".format(nid=nid))
    timestamp = newsinfo['addtime']
    newsinfo['addtime'] = time.strftime("%Y-%m-%d %H:%M:%S",time.localtime(timestamp))
    return render_template('front_end/newsDetail.html',data = kw,
                           newsinfo=newsinfo)


@home.route("/case.html")
@initsolgan
def case(*args,**kw):
    return render_template('front_end/case.html',data = kw)


@home.route("/login.html",methods=['GET','POST'])
@initsolgan
def login(*args,**kw):
    method = request.method
    data = {}
    if method == "POST":
        try:
            username = request.form.get("username")
            password = request.form.get("password")
            assert username,password
            mysqlhandle = MysqlHandle(**mysqlconfig)
            result = mysqlhandle.select("select * from plc_user where username='{username}' and passwd='{passwd}'".format(
                username = username,
                passwd = saltmd5(password)
            ),ret=1)
            if not result:
                data['code'] = 1
                data['msg'] = '用户名或密码错误'
                return jsonify(data)
        except Exception as e:
            data['code'] = 1
            data['msg'] = str(e)
        else:
            data['code'] = 0
            data['msg'] = "success"
            response = make_response(json.dumps(data))
            token = str(uuid.uuid1())
            expires = int(time.time())+24*3600
            cookiesdict[token] = expires
            response.set_cookie(cookiename,token,max_age=expires)
    elif method == 'GET':
        data = kw
        response = render_template('front_end/login.html',data = data)
    return response