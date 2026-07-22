# 1. 服务器配置文件路径
cat /alidata/server/php/etc/php-fpm.conf|grep -v ';'|grep -v '^$'

# 2. 容器配置文件路径
cat /usr/local/etc/php-fpm.d/www.conf|grep -v ';'|grep -v '^$'

# 3. 需要修改的配置

