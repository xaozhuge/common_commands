# 1. 当访问 http://ip_address, 加载默认的虚拟主机配置
# 1.1 默认配置可以通过调整加载顺序
例如 a.com.conf 而不是 b.com.conf

# 1.2 设置 default_server
listen 80 default_server;

# 2. 按照日期记录日志
if ($time_iso8601 ~ '(\d{4}-\d{2}-\d{2})') {
	set $time $1;
}
access_log  /var/log/nginx/$host/$time.log;

