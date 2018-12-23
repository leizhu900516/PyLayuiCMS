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
        self.conn = self._connection()
        self.cusor = self.conn.cursor()
    def _connection(self):
        _conn= pymysql.connect(**self.conf)
        print("connect db")
        return _conn

    def operation(self,sql):
        print(sql)
        try:
            self.cusor.execute(sql)
            self.conn.commit()
        except:
            return False
        return True
    def select(self,sql,ret=1):
        '''
        :param sql:
        :param ret: 1 返回 一条 'all' 返回全部
        :return:
        '''
        _r = self.cusor.execute(sql)
        if ret==1:
            result = self.cusor.fetchone()
            if not result:
                result = []
            return result
        result = self.cusor.fetchall()
        if not result:
            result = {}
        return result

    def __del__(self):
        print("close db")
        self.conn.close()

