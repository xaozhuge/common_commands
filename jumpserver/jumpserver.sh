#!/bin/sh
echo "请先配置 server_ip、add_date"
echo "默认 server_ip=127.0.0.1"
echo "默认 add_date=20240406"
server_ip=127.0.0.1
add_date=20240406

echo "一、添加没有sudo权限的用户"
echo "例如 sudo useradd nosudo"$server_ip
echo "例如 sudo passwd nosudo"$server_ip
echo "例如 密码参考 md5(nosudo#"$add_date"?四位随机字母)"

echo "二、添加有sudo权限的用户"
echo "例如 sudo useradd withsudo"$server_ip
echo "例如 sudo passwd withsudo"$server_ip
echo "例如 密码参考 md5(withsudo#"$add_date"?四位随机字母)"





