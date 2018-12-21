# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/19

from flask import Blueprint,jsonify,request
from utils.utils import  login_auth
import os
from utils.db import  MysqlHandle
from setting import mysqlconfig,image_path,app_to_tablenaem
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
    try:
        newsorproduct = params.get('newsorproduct')
        title = params.get('title')
        desc = params.get('desc')
        content = params.get('content')
        show_image = params.get('file')
        icon = params.get('icon')
        assert title,Exception('标题不能为空')
        assert desc,Exception('简介不能为空')
        mysqlhandle = MysqlHandle(**mysqlconfig)
        tablename = app_to_tablenaem.get(newsorproduct)
        assert tablename,Exception("内容类型错误")
        _sql = "insert into {tablename} (`title`,`icon`,`show_image`,`abstract`,`addtime`,`content`) " \
              "VALUES ('{title}','{icon}','{show_image}','{abstract}',{addtime},'{content}')"
        sql = _sql.format(title = title,
                   show_image = show_image,
                   abstract = desc,
                   icon=icon,
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



@api.route("/text",methods=['GET','POST'])
@login_auth
def gettext():
    '''
    全网标题修改
    :return:
    '''
    data = {}
    methods = request.method
    if methods == 'GET':
        try:
            mysqlhandle = MysqlHandle(**mysqlconfig)
            result = mysqlhandle.select("select * from plc_slogan",ret='all')
            for i in result:
                data.setdefault('data',[]).append(
                    {
                        "id":str(i['id']),
                        "title":'<span style="color: #01AAED;">{0}</span>'.format(i['title']),
                        "addtimes":time.strftime("%Y-%m-%d %H:%M:%S",time.localtime(i['addtimes']))
                    }
                )
            data['count'] = len(result)
            data['code'] = 0
            data['msg'] = 'success'
        except Exception as e:
            data['count'] = 0
            data['code'] = 1
            data['msg'] = str(e)
    elif methods == "POST":
        params = request.form
        _id = params.get('id')
        text = params.get('text')
        try:
            mysqlhandle = MysqlHandle(**mysqlconfig)
            mysqlhandle.operation("update  plc_slogan set title='{title}',"
                                  "addtimes={addtimes} where id={id}".format(
                title = text,
                id=_id,
                addtimes= int(time.time()))
            )
            data['code'] = 0
            data['msg'] = '修改成功!!'
        except Exception as e:
            data['code'] = 1
            data['msg'] = '修改失败{}'.format(str(e))
    return jsonify(data)