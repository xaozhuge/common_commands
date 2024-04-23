#!/bin/sh
echo "请先配置 server_ip, conf_date"
echo "默认 server_ip=127.0.0.1 conf_date=20240101"
server_ip=127.0.0.1
conf_date=20240101

echo "一、添加有sudo权限的jenkins用户"
echo "例如 sudo useradd jenkins"
echo "例如 sudo passwd jenkins"
echo "例如 密码参考 md5(jenkins)#"$conf_date"?八位随机字母"







