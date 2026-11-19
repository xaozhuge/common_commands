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
    # 如果 nginx 的 pid 文件存在, 并且 netstat 能查到 nginx 监听端口
    if [ -e $nginx_pid ] && netstat -tunpl | grep nginx &> /dev/null;then
        echo "nginx already running...."
        exit 1
    fi
    
    # 不换行打印 "Starting nginx!", 预留位置后面打印启动成功 / 失败标记
    # echo -n: echo 默认末尾输出换行, -n 取消最后的换行符, 输出后光标不换到下一行
    echo -n $"Starting $prog!"
    
    # 等价直接写 /alidata/server/nginx/sbin/nginx -c /alidata/server/nginx/conf/nginx.conf
    # 执行 nginx, -c 参数作用: 指定加载自定义配置文件
    $nginxd -c ${nginx_config}
    
