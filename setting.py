# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18
import pymysql.cursors
mysqlconfig = {
    "host":"127.0.0.1",
    "user":'root',
    "port":3306,
    "password":"123456",
    "db":'PyLayuiCMS',
    "charset":"utf8mb4",
    "cursorclass":pymysql.cursors.DictCursor
}


#cookie name
cookiename = 'c_into'

#image path
image_path = "/static/res/static/images/"



#应用分类字典
app_to_tablenaem = {
    "0":"plc_news",
    "1":"plc_products",
    "2":"plc_service",
}