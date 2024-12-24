# 1. 重启 php-fpm
pkill -USR2 php-fpm

# 2. 容器内 重启 php-fpm
docker exec php73_c pkill -USR2 php-fpm

