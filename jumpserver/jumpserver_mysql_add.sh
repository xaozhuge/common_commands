#!/bin/sh
echo "请先配置 server_ip/dbname/passwd/proxyip"
# server_ip 数据库IP
server_ip=server_ip
dbname=dbname
passwd=passwd
# proxyip 堡垒机IP
proxyip=proxyip

echo "1、添加线上只读权限的用户-未存在账号"
echo "grant SELECT on "$dbname".* to 'readdb"$server_ip"'@'"$proxyip"' identified by '"$passwd"';"
echo "2、添加线上只读权限的用户-已存在账号"
echo "grant SELECT on "$dbname".* to 'readdb"$server_ip"'@'"$proxyip"';"
echo "3、添加线上所有权限的用户-未存在账号"
echo "grant all privileges on *.* to 'alldb"$server_ip"'@'"$proxyip"' identified by '"$passwd"';"

echo "刷新权限"
echo "flush privileges;"


