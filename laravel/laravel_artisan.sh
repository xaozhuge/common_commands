# 1. 缓存路由: 将应用程序的所有路由编译到单个文件中, 以提高路由解析速度
php artisan route:clear
php artisan route:cache

# 2. 缓存配置: 将所有配置文件合并到一个文件中, 并缓存结果, 从而提高配置加载速度
php artisan config:clear
php artisan config:cache

# 3. 缓存路由和缓存配置
php artisan optimize
docker exec php73_c php /www/api/artisan route:clear
docker exec php73_c php /www/api/artisan config:clear

# 4. 清除类缓存相关
rm -f bootstrap/cache/*.php

