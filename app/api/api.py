# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/19

from flask import Blueprint,jsonify
from utils.utils import  login_auth
api = Blueprint("api",__name__)

@api.route("/content")
@login_auth
def producthandle():
    return