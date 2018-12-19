# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18

from flask import Flask,jsonify
from app.home.home import home
from app.admin.admin import admin
app = Flask(__name__)
app.register_blueprint(home,url_prefix="/")
app.register_blueprint(admin,url_prefix="/manage")





if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5005,debug=True)