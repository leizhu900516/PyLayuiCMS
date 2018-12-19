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