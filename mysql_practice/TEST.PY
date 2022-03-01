#!/bin/env python 3
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
ML = 4
depth = 350

if ML.isdecimal:
    print('s')
else:
    print("a")
