# -*- coding: utf-8 -*-
# @author: chenhuachao
# @time: 2018/12/18
import pymysql.cursors

class MysqlHandle(object):
    '''
    mysql handel
    '''
    def __init__(self,**conf):
        self.conf=conf
        self.conn = self.connection()
        self.cusor = self.conn.cursor()
    def connection(self):
        _conn= pymysql.connect(**self.conf)
        return _conn

    def operation(self,sql):
        print(sql)
        self.cusor.execute(sql)
        self.conn.commit()
    def select(self,sql,ret=1):
        _r = self.cusor.execute(sql)
        if ret==1:
            return self.cusor.fetchone()
        return self.cusor.fetchall()

    def __del__(self):
        print("close db")
        self.conn.close()