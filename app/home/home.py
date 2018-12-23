# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18

from flask import Blueprint,render_template,request,jsonify,make_response
from utils.utils import saltmd5,initsolgan,get_table_data
import time
from utils.token import  cookiesdict
from setting import cookiename
import uuid
import json
home = Blueprint('home',__name__)

@home.route("/")
@initsolgan
def homes(*args,**kw):
    data = {}
    data.update(kw)
    #图片
    images = get_table_data("select * from plc_images",select_or_update="select",ret='all')
    for i in images:
        if i['page_location']=="home.slide":
            data.setdefault("homeslide",[]).append(i['imageurl'])
    # 产品
    products = get_table_data("select * from plc_products",select_or_update="select",ret='all')
    for i in products:
        data.setdefault('homeproduct',[]).append(i)
    #服务
    service = get_table_data("select * from plc_service",select_or_update="select",ret='all')
    for i in service:
        data.setdefault('homeservice',[]).append([i['title'],i['abstract'],i['show_image']])
    return render_template('front_end/index.html',data = data)


@home.route("/about.html")
@initsolgan
def about(*args,**kw):
    about = get_table_data("select * from  plc_about_us where flag=1",select_or_update="select",ret="all")
    zhaopin = get_table_data("select * from  plc_about_us where flag=2",select_or_update="select",ret="all")
    return render_template('front_end/about.html',data=kw,
                           about = about,
                           zhaopin = zhaopin)


@home.route("/product.html")
@initsolgan
def product(*args,**kw):
    products = get_table_data("select * from plc_products",select_or_update="select",ret='all')
    return render_template('front_end/product.html',products = products,
                           data = kw)


@home.route("/news.html")
@initsolgan
def news(*args,**kw):
    page = int(request.args.get("page",1))
    limit = int(request.args.get('limit',16))
    news = get_table_data("select * from plc_news limit {0},{1}".format(
        (page-1)*limit,page*limit)
        ,ret='all',select_or_update="select")
    newscount = get_table_data("select count(1) from plc_news",select_or_update="select")[0]['count(1)']
    return render_template('front_end/news.html',data = kw,
                           news = news,
                           newscount = newscount,
                           page = page)

@home.route("/news/<int:nid>.html")
@initsolgan
def newsdetail(*args,**kw):
    nid = kw.get('nid')

    newsinfo = get_table_data("select * from plc_news where status=1 and id={nid}".format(
        nid=nid),
        select_or_update="select")[0]
    timestamp = newsinfo['addtime']
    newsinfo['addtime'] = time.strftime("%Y-%m-%d %H:%M:%S",time.localtime(timestamp))
    return render_template('front_end/newsDetail.html',data = kw,
                           newsinfo=newsinfo)


@home.route("/case.html")
@initsolgan
def case(*args,**kw):
    '''
    案例
    :param args:
    :param kw:
    :return:
    '''
    page = int(request.args.get('page',1))
    limit = int(request.args.get('limit',9))
    sql = "select * from plc_case where status = 1 limit {start},{limit}".format(
        start = (page-1)*limit,
        limit = limit
    )
    case = get_table_data(sql,select_or_update="select",ret="all")
    casecount = get_table_data("select count(1) from plc_case","select")[0]['count(1)']
    for index,cs in enumerate(case):
        if  index in [1,7]:
            cs["css"] = "even center"
        if index in [3,5]:
            cs["css"] = "even"
        if  index == 4:
            cs["css"] = " center"

    return render_template('front_end/case.html',data = kw,
                           case = case,
                           casecount = casecount,
                           page = page)


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
            result = get_table_data("select * from plc_user where username='{username}' and passwd='{passwd}'".format(
                username = username,
                passwd = saltmd5(password)
            ),ret=1,select_or_update="select")
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