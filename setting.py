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
    "3":"plc_case",
}

#其它应用操作对应字典
other_to_table = {
    "link":"plc_friend_link",
    "product":"plc_products",
    "news":"plc_news",
    "case":"plc_case",
}

#图片索引字典
imageDict = {
    "slide1":1,
    "slide2":2,
    "erweima":3,
    "logoimg":4,
}