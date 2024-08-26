#!/bin/bash

# 1. iftop 是一个网络监控工具, 用于显示通过网络接口传输的数据的实时带宽使用情况
/usr/sbin/iftop

# 2. -o 2s 选项设置了 iftop 的输出刷新时间间隔为2秒
# iftop 默认每秒刷新一次显示, 该选项将其更改为每2秒刷新一次
/usr/sbin/iftop -o 2s

# 3. -t 禁用交互模式(通常在终端中运行iftop时会有图形界面交互), 只输出文本
/usr/sbin/iftop -t

# 4. -n 禁用 DNS 解析, 显示纯 IP 地址, 而不是将其解析为主机名
/usr/sbin/iftop -n

# 5. -N 禁用端口号到服务名的解析, 直接显示端口号
/usr/sbin/iftop -N

# 6. -s 5 设置iftop运行的持续时间为5秒 
# 这个参数控制iftop运行多长时间后自动退出, 并输出结果到终端。
/usr/sbin/iftop -s 5

# 7. -i eth1 选择特定的网络接口进行监控, 网络接口的名称(如: eth0 或 eth1)
/usr/sbin/iftop -i eth1

