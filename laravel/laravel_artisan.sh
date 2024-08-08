# 1. 缓存路由: 将应用程序的所有路由编译到单个文件中, 以提高路由解析速度
php artisan route:clear
php artisan route:cache

# 2. 缓存配置: 将所有配置文件合并到一个文件中, 并缓存结果, 从而提高配置加载速度
php artisan config:clear
php artisan config:cache

