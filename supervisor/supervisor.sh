# 一、Centos7 安装 supervisor
# 1. Linux 安装 supervisor
yum install supervisor

# 2. 启动 supervisor 服务
systemctl start supervisord.service 

# 3. 开机启动 supervisor服务
systemctl enable supervisord.service 

# 4. 重启 supervisor 服务
systemctl restart supervisord.service

# 二、supervisor 配置
# 1. 配置文件地址
/etc/supervisord.d
# 2. 配置文件名 demo
gocronweb.ini
# 3. 配置文件内容 demo 
[program:gocronweb]
directory=/alidata/gocron/gocron-linux-amd64
command=/alidata/gocron/gocron-linux-amd64/gocron web
autostart=true
autorestart=true
stdout_logfile=/alidata/log/supervisor/gocronwebstd.log
stderr_logfile=/alidata/log/supervisor/gocronweberr.log

# 三、启动、关闭服务（通过端口或者返回值）
# 1. 启动、关闭 gocronweb
supervisorctl start gocronweb
supervisorctl stop gocronweb
# 2. 查看运行状态
supervisorctl status


