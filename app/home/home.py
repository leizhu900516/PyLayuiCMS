# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18

from flask import Blueprint,render_template,request,jsonify,make_response
from utils.db import MysqlHandle
from utils.utils import saltmd5
import time
from utils.token import  cookiesdict
from setting import mysqlconfig,cookiename
import uuid
import json
home = Blueprint('home',__name__)

@home.route("/")
def homes():
    data = {}
    mysqlhandle = MysqlHandle(**mysqlconfig)
    result = mysqlhandle.select("select * from plc_images",ret='all')
    for i in result:
        if i['page_location']=="home.slide":
            data.setdefault("homeslide",[]).append(i['imageurl'])
    products = mysqlhandle.select("select * from plc_products",ret='all')
    for i in products:
        data.setdefault('homeproduct',[]).append([i['title'],i['abstract']])
    text = mysqlhandle.select("select * from plc_slogan",ret='all')
    for i in text:
        data.setdefault('text',{})[i['id']] = i['title']
    return render_template('front_end/index.html',data = data)


@home.route("/about.html")
def about():
    return render_template('front_end/about.html')


@home.route("/product.html")
def product():
    mysqlhandle = MysqlHandle(**mysqlconfig)
    data = mysqlhandle.select("select * from plc_products",ret='all')
    return render_template('front_end/product.html',data = data)


@home.route("/news.html")
def news():
    return render_template('front_end/news.html')

@home.route("/news/<int:nid>.html")
def newsdetail(nid):
    return render_template('front_end/newsDetail.html')


@home.route("/case.html")
def case():
    return render_template('front_end/case.html')


@home.route("/login.html",methods=['GET','POST'])
def login():
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
        response = render_template('front_end/login.html')
    return response