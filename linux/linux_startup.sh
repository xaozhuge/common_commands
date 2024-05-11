# 一、开启自启说明
# 1. 文件地址 
/etc/rc.local
/etc/rc.d/rc.local

# 2. 将启动命令加入到该文件中，例如
/etc/init.d/mysqld start
#/etc/init.d/nginx start
/etc/init.d/openresty start
#/etc/init.d/php-fpm start
/etc/init.d/php-fpm73 start
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
/usr/local/bin/redis-server /alidata/server/redis/conf/redis.conf &

# 3. 说明 该命令用于启动 vsftpd（Very Secure FTP Daemon），
# 一个用于 Linux 系统的轻量级、高性能的 FTP 服务器软件
/usr/sbin/vsftpd

# 二、开机没自启原因
# 1. 服务器没成功是因为都没有加执行权限, 需要给 /etc/rc.d/rc.local 加执行权限
chmod +x /etc/rc.d/rc.local

# 2. 重启验证是否可以正常开启 
reboot

