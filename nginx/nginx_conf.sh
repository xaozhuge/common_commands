# 1. 当访问 http://ip_address, 加载默认的虚拟主机配置
# 1.1 默认配置可以通过调整加载顺序
例如 a.com.conf 而不是 b.com.conf

# 1.2 设置 default_server
listen 80 default_server;

