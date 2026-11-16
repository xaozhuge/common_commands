#!/bin/bash
# nginx Startup script for the Nginx HTTP Server

nginxd=/alidata/server/nginx/sbin/nginx
nginx_config=/alidata/server/nginx/conf/nginx.conf
nginx_pid=/alidata/server/nginx/logs/nginx.pid

RETVAL=0
prog="nginx"

# shell 测试, 判断这个文件是否存在并且拥有可执行权限
[ -x $nginxd ] || exit 0

# Start nginx daemons functions.
start() {
    # -e: exists, 判断文件是否存在

