# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18

from flask import Blueprint,render_template
from utils.utils import login_auth,get_table_data

admin = Blueprint("admin",__name__)


@admin.route("/")
@login_auth
def adminhome():
    productcount = get_table_data("select count(1) from plc_products",
                                  select_or_update="select")["count(1)"]

    return render_template('back_end/index.html',productcount=productcount)

@admin.route("/content")
@login_auth
def contentmanage():
    return render_template('back_end/content.html')


@admin.route("/products")
@login_auth
def productsmanage():
    return render_template('back_end/content.html')

@admin.route("/images")
@login_auth
def imagesManage():
    return render_template('back_end/images.html')

@admin.route("/text")
@login_auth
def textManage():
    return render_template('back_end/text.html')

@admin.route("/other")
@login_auth
def otherManage():
    return render_template('back_end/other.html')