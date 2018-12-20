# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/19

from flask import Blueprint,jsonify,request
from utils.utils import  login_auth
import os
from utils.db import  MysqlHandle
from setting import mysqlconfig,image_path
import time
api = Blueprint("api",__name__)

@api.route("/content",methods=['GET','POST'])
@login_auth
def producthandle():
    '''
    产品或者新闻操作api
    :return:
    '''
    data = {}
    params = request.form
    print(params)
    try:
        #newsorproduct：1是产品0是新闻
        newsorproduct = params.get('newsorproduct')
        title = params.get('title')
        desc = params.get('desc')
        content = params.get('content')
        show_image = params.get('file')
        assert title,Exception('标题不能为空')
        assert desc,Exception('简介不能为空')
        mysqlhandle = MysqlHandle(**mysqlconfig)
        if newsorproduct == '1':
            tablename = 'plc_products'
        elif newsorproduct == '0':
            tablename = 'plc_news'
        assert tablename,Exception("内容类型错误")
        _sql = "insert into {tablename} (`title`,`show_image`,`abstract`,`addtime`,`content`) " \
              "VALUES ('{title}','{show_image}','{abstract}',{addtime},'{content}')"
        sql = _sql.format(title = title,
                   show_image = show_image,
                   abstract = desc,
                   addtime = int(time.time()),
                   content = content,
                   tablename = tablename)
        mysqlhandle.operation(sql)
    except Exception as e:
        data['code'] = 1
        data['msg'] = str(e)
    data['code'] = 0
    data['msg'] = "添加成功"
    return jsonify(data)


@api.route("/uploadimg",methods=['GET','POST'])
@login_auth
def uploadimg():
    '''
    产品或者新闻中的图片上传api
    :return:
    '''
    data = {}
    file = request.files.get('file')
    path = os.path.dirname(
        os.path.dirname(
            os.path.dirname(
                os.path.abspath(__file__))))
    imagepath = path+image_path
    _storefilename = "{0}.{1}".format(time.strftime("%Y%m%d%H%M%S",time.localtime(time.time())),
                                     file.filename.split('.')[-1])
    if not os.path.exists(imagepath):
        os.makedirs(imagepath)
    filename = "{0}{1}".format(imagepath,_storefilename)
    with open(filename,'wb') as f:
        f.write(file.read())
    try:
        pass
    except Exception as e:
        data['code'] = 1
        data['msg'] = str(e)
    data['code'] = 0
    data['msg'] = "sss"
    data.setdefault('data',{})['src']="{0}{1}".format(image_path,_storefilename)
    return jsonify(data)
