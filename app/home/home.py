# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18

from flask import Blueprint,render_template
home = Blueprint('home',__name__)

@home.route("/")
def homes():
    return render_template('front_end/index.html')


@home.route("/about.html")
def about():
    return render_template('front_end/about.html')


@home.route("/product.html")
def product():
    return render_template('front_end/product.html')


@home.route("/news.html")
def news():
    return render_template('front_end/news.html')




@home.route("/case.html")
def case():
    return render_template('front_end/case.html')