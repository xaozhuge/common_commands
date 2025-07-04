# 1. nginx访问日志没生成
# 1.1 优先查看 error.log, 可能会出现由于 /etc/nginx/html 目录不存在, 导致日志生成失败
[error] 20#20: *2223 testing "/etc/nginx/html" existence failed (2: No such file or directory) while logging request

# 2. 访问域名, 返回500
# 2.1 查看nginx的错误日志, 出现如下错误
1024 worker_connections are not enough while connecting to upstream
# 表明 Nginx 服务器在处理连接到上游服务器（upstream）的请求时遇到了 worker_connections 不足的问题
# 这意味着 Nginx 的工作进程允许的最大连接数不够, 无法处理所有的客户端请求

# 2.2 增加 worker_connections 的数量
vi nginx.conf
worker_connections 65535;

# 3. 出现 413 Request Entity Too Large
# 打开文件 nginx.conf , http中添加/修改
client_max_body_size 100m;

# 4. 出现 403 Forbidden
# 权限问题, 修改项目目录的权限
sudo chmod  -R  777 项目目录

# 5. 出现问题
nginx: [warn] could not build optimal server_names_hash, you should increase either server_names_hash_max_size: 512 or server_names_hash_bucket_size: 64; ignoring server_names_hash_bucket_size

# 解决方案: nginx.conf增加
server_names_hash_bucket_size 128;

