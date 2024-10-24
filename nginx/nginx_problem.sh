# 1. nginx访问日志没生成
# 1.1 优先查看 error.log, 可能会出现由于 /etc/nginx/html 目录不存在, 导致日志生成失败
[error] 20#20: *2223 testing "/etc/nginx/html" existence failed (2: No such file or directory) while logging request

# 2. 访问域名, 返回500
# 2.1 查看nginx的错误日志, 出现如下错误
1024 worker_connections are not enough while connecting to upstream

