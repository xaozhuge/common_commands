#!/bin/bash

# 1. iftop 是一个网络监控工具, 用于显示通过网络接口传输的数据的实时带宽使用情况
/usr/sbin/iftop

# 2. -o 2s 选项设置了 iftop 的输出刷新时间间隔为2秒
# iftop 默认每秒刷新一次显示, 该选项将其更改为每2秒刷新一次
/usr/sbin/iftop -o 2s

