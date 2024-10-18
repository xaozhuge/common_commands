# 1. 找到 php-fpm.conf 的位置
ps aux|grep php-fpm
/alidata/server/php7/etc/php-fpm.conf

# 2. 配置 php-fpm 的错误日志路径
error_log = /alidata/log/php/php-fpm7.log

# 3. 配置 php-fpm 的访问日志路径
access.log = /alidata/log/php/php-fpm7.access.log

# 4. 配置 php-fpm 的访问日志格式
access.format = "%{REMOTE_ADDR}e %d %t %s %m %{SERVER_NAME}e %{REQUEST_URI}e %C%% %{HTTP_ORIGIN}e"

# 5. 定义 PHP-FPM 可以同时运行的最大子进程数（即处理请求的 PHP 进程）
# 限制了同时处理的请求数量. 如果请求数超过此值, 额外的请求将被排队, 直到有可用的子进程
# 有助于防止服务器资源耗尽, 确保在高负载情况下的稳定性
pm.max_children = 100

# 6. 设置 PHP-FPM 启动时预先创建的子进程数
# 在服务启动时会创建 20 个子进程, 以便能快速响应初始的请求
# 适合在预期负载较高的情况下设置的值, 以减少用户请求的等待时间
pm.start_servers = 20

# 7. 定义 PHP-FPM 至少应该保持的空闲子进程数
# 如果空闲子进程少于 5 个, PHP-FPM 将启动更多的子进程以确保有足够的资源来处理新请求
pm.min_spare_servers = 5

