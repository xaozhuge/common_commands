# 1. nginx访问日志没生成
# 1.1 优先查看 error.log, 可能会出现由于 /etc/nginx/html 目录不存在, 导致日志生成失败
[error] 20#20: *2223 testing "/etc/nginx/html" existence failed (2: No such file or directory) while logging request


