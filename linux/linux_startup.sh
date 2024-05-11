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
