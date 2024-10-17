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

