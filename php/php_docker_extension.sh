# 1. 验证
php -m | grep redis
php -m | grep bcmath
php -m | grep gmp

# 2. docker内安装简单extension
install-php-extensions bcmath
install-php-extensions gmp

# 3. docker内安装复杂extension, 例如redis
# 3.1 将 redis-5.3.7.tgz拷贝到容器内
docker cp redis-5.3.7.tgz php73_c:/tmp/extensions

