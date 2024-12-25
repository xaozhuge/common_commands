# 1. 验证
php -m | grep redis
php -m | grep bcmath
php -m | grep gmp

# 2. docker内安装简单extension
install-php-extensions bcmath
install-php-extensions gmp

