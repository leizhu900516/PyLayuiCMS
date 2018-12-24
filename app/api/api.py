# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/19

from flask import Blueprint,jsonify,request
from utils.utils import  login_auth,get_table_data,statisticsdata
import os
from setting import image_path,app_to_tablenaem,\
    other_to_table,imageDict
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
        get_table_data(sql,select_or_update="operation")
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
            result = get_table_data("select * from plc_slogan",ret='all',select_or_update="select")
            for i in result:
                data.setdefault('data',[]).append(
                    {
                        "id":str(i['id']),
                        "title":'<span style="color: #01AAED;">{0}</span>'.format(i['title']),
                        "desc":i["desc"],
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
            get_table_data("update  plc_slogan set title='{title}',"
                                  "addtimes={addtimes} where id={id}".format(
                title = text,
                id=_id,
                addtimes= int(time.time()))
            ,select_or_update="operation")
            data['code'] = 0
            data['msg'] = '修改成功!!'
        except Exception as e:
            data['code'] = 1
            data['msg'] = '修改失败{}'.format(str(e))
    return jsonify(data)


@api.route("/other",methods=['GET','POST','DELETE'])
@login_auth
def otherOp():
    '''
    获取网站内容接口
    :return:
    '''
    data= {}
    method = request.method
    if method=="POST":
        try:
            params = request.form
            flag = params.get("flag")
            tablename = other_to_table.get(flag)
            assert tablename,Exception("类型错误")
            if flag == "link":
                sql = "insert into {tablename} (`name`,`url`,`addtime`) " \
                      "VALUES ('{name}','{url}',{addtime})".format(
                                tablename = tablename,
                                name = params.get('name'),
                                addtime = int(time.time()),
                                url = params.get('url'),
                        )
            get_table_data(sql,select_or_update="operation")
            data['code'] = 0
            data['msg'] = '成功'
        except Exception as e:
            data['code'] = 1
            data['msg'] = str(e)
    if method == "GET":
        flag = request.args.get("flag")
        page = int(request.args.get("page"))
        limit = int(request.args.get("limit",10))
        keyid = request.args.get("keyid")
        tablename = other_to_table.get(flag)
        try:
            assert tablename,Exception("类型错误")
            if keyid:
                sql = "select * from {tablename} where id = {id}".format(
                    id=keyid,
                    tablename = tablename
                )
            else:
                sql = "select * from {tablename} limit {start},{limit}".format(
                    tablename = tablename,
                    start = (page-1)*limit,
                    limit = limit)
            result = get_table_data(sql, select_or_update="select",ret="all")
            count = get_table_data("select count(1) from {tablename}".format(
                tablename = tablename
            ),select_or_update="select")
            if count:
                count = count[0]["count(1)"]
            else:
                count = 0
            for i in result:
                i['addtime'] = time.strftime("%Y-%M-%d".format(time.localtime(i['addtime'])))
            data['count'] = count
            data['data'] = result
            data['code'] = 0
            data['msg'] = "success"
        except Exception as e:
            data['code'] = 1
            data['msg'] = str(e)
    if method == "DELETE":
        params = request.form
        flag = params.get("flag")
        tablename = other_to_table.get(flag)
        sql = "delete from {tablename} where id={id}".format(
            tablename = tablename,
            id = params.get("_id")
        )
        __result = get_table_data(sql,select_or_update="operation")
        data['code'] = 0
        data['msg'] = "success"
    return jsonify(data)

@api.route("/updateimg",methods=['POST'])
@login_auth
def updateimghandle():
    data = {}
    params = request.form
    print("params=",params)
    flag = params.get("flag")
    imageurl = params.get("imageurl")
    tableId = imageDict.get(flag)
    _status = get_table_data("update plc_images set imageurl='{imageurl}' where id={id}".format(
        imageurl = imageurl,
        id = tableId
    ),select_or_update="operation")
    if _status:
        data["code"] = 0
        data["msg"] = "success"
    else:
        data["code"] = 1
        data["msg"] = "失败"
    return jsonify(data)

@api.route("/statistics",methods = ['GET'])
def statistics():
    data = {}
    statisticsdata()
    data['code'] = 0
    data['msg'] = "success"
    return jsonify(data)