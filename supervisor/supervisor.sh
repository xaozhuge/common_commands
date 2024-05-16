# 一、Centos7 安装 supervisor
# 1. Linux 安装 supervisor
yum install supervisor

# 2. 启动 supervisor 服务
systemctl start supervisord.service 

# 3. 开机启动 supervisor服务
systemctl enable supervisord.service 

# 4. 重启 supervisor 服务
systemctl restart supervisord.service
