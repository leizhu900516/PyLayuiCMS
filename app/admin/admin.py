# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18

from flask import Blueprint,render_template
admin = Blueprint("admin",__name__)


@admin.route("/")
def adminhome():
    return render_template('back_end/home.html')