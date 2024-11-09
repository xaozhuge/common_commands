# 1. 检查开机启动项
ls -al /etc/rc.d/rc.local
chmod +x /etc/rc.d/rc.local

# 2. 配置开机启动项
/etc/init.d/mysqld start
/etc/init.d/php-fpm start

