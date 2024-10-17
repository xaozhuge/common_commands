# 1. 找到 php-fpm.conf 的位置
ps aux|grep php-fpm
/alidata/server/php7/etc/php-fpm.conf

# 2. 配置 php-fpm 的错误日志路径
error_log = /alidata/log/php/php-fpm7.log

# 3. 配置 php-fpm 的访问日志路径
access.log = /alidata/log/php/php-fpm7.access.log

