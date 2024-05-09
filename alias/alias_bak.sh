#!/bin/sh

echo "服务器
外网:公网IP
内网:内网IP
1:重启 nginx/1.22.1
2:重启 php-fpm/5.5.7
3:前往nginx配置文件
4:查看开机启动项
5:前往php日志、慢查询目录
6:前往nginx日志目录
"
read -p "where code you will go?": NUM

case $NUM in
    1)
    sudo /etc/init.d/nginx reload;
    ;;
    2)
    sudo /etc/init.d/php-fpm restart;
    ;;
    3)
    cd /alidata/server/nginx/conf/vhosts;
    pwd;
    ;;
    4)
    cat /etc/rc.local
    ;;
    5)
    cd /alidata/log/php;
    pwd;
    ;;
    6)
    cd /alidata/log/nginx/access;
    pwd;
    ;;
esac


