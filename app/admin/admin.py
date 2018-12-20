# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18

from flask import Blueprint,render_template
from utils.utils import login_auth
admin = Blueprint("admin",__name__)


@admin.route("/")
@login_auth
def adminhome():
    return render_template('back_end/index.html')

@admin.route("/product")
@login_auth
def productmanage():
    return render_template('back_end/product.html')



@admin.route("/images")
@login_auth
def imagesManage():
    return render_template('back_end/images.html')
