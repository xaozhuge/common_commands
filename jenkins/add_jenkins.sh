#!/bin/sh
echo "请先配置 server_ip, conf_date"
echo "默认 server_ip=127.0.0.1 conf_date=20240101"
server_ip=127.0.0.1
conf_date=20240101

echo "一、添加有sudo权限的jenkins用户"
echo "例如 sudo useradd jenkins"
echo "例如 sudo passwd jenkins"
echo "例如 密码参考 md5(jenkins)#"$conf_date"?八位随机字母"

echo "二、给jenkins账号开启权限"
echo "例如 sudo chmod +w  /etc/sudoers"
echo "例如 sudo vi /etc/sudoers"
echo "例如添加 jenkins ALL=(ALL) NOPASSWD: ALL"
echo "例如 sudo chmod -w  /etc/sudoers"

echo "三、配置免密登录"
echo "例如 su -s /bin/bash jenkins"
echo "例如 ssh-copy-id -i ~/.ssh/id_rsa.pub jenkins@"$server_ip
echo "例如 ssh jenkins@"$server_ip



