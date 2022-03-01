#!/bin/env python3
# -*- coding:utf-8 -*-

"""
@ author : chunghung lo
date: 2021/11/1

get the event catalog from TECDB,
date-time from 1990-01-01 to now

Variable:
ML: miniman Ml for event catalog
depth : Max depth (km) for event catalog

"""
# Variable
ML = 3
depth = 1000
OUTPUT_name='seis_1990_2021_M3.csv'

def get_mysql_data(sql, ML, depth,output):
    import pymysql
    import pandas as pd
    from User import User
    u = User()
    params = {'ML': f"{ML:2.1f}", 'depth': f"{depth:5.1f}"}
    with pymysql.connect(
            host=u.ip(),
            user=u.username(),
            password=u.password(),
            db=u.db(),
            charset='utf8',
            cursorclass=pymysql.cursors.DictCursor) as conn:
        df = pd.read_sql(sql, conn, parse_dates=["date"], params=params)

    df = df.sort_values(by='date', ascending=True)
    headers = ['date', 'time', 'lat', 'lon', 'depth', 'ML', 'fixed', 'quality']
    df.to_csv(output, sep=',',
              mode='w', header=headers, index=None)


def main(ML, depth,OUTPUT_name):
    import sys
    if isinstance(float(ML), float) and isinstance(float(depth), float):
        sql = f'SELECT date, time,latitude,longitude, depth, ML, fixed, quality' +\
            f' FROM event ' +\
            f' WHERE (ML >= %(ML)s AND depth <= %(depth)s ' +\
            f'AND date >= "1990-1-1")'
        get_mysql_data(sql, ML, depth,OUTPUT_name)
    else:
        sys.exit("parameter error")


if __name__ == '__main__':
    main(ML, depth,OUTPUT_name)
