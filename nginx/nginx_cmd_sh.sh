#!/bin/bash
# nginx Startup script for the Nginx HTTP Server

nginxd=/alidata/server/nginx/sbin/nginx
nginx_config=/alidata/server/nginx/conf/nginx.conf
nginx_pid=/alidata/server/nginx/logs/nginx.pid

RETVAL=0
prog="nginx"

