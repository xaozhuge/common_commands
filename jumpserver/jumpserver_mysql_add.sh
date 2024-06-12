#!/bin/sh
echo "请先配置 server_ip/dbname/passwd/proxyip"
server_ip=server_ip
dbname=dbname
passwd=passwd
proxyip=proxyip

echo "1、添加线上只读权限的用户-未存在账号"
echo "grant SELECT on "$dbname".* to 'readdb"$server_ip"'@'"$proxyip"' identified by '"$passwd"';"
echo "2、添加线上只读权限的用户-已存在账号"
echo "grant SELECT on "$dbname".* to 'readdb"$server_ip"'@'"$proxyip"';"
