# 1. nginx访问日志没生成
# 1.1 优先查看 error.log, 可能会出现由于 /etc/nginx/html 目录不存在, 导致日志生成失败
[error] 20#20: *2223 testing "/etc/nginx/html" existence failed (2: No such file or directory) while logging request

# 2. 访问域名, 返回500
# 2.1 查看nginx的错误日志, 出现如下错误
1024 worker_connections are not enough while connecting to upstream
# 表明 Nginx 服务器在处理连接到上游服务器（upstream）的请求时遇到了 worker_connections 不足的问题
# 这意味着 Nginx 的工作进程允许的最大连接数不够, 无法处理所有的客户端请求

