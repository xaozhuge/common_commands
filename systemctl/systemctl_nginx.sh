# 1. 启动 Nginx 服务
sudo systemctl start nginx

# 2. 停止 Nginx 服务
sudo systemctl stop nginx

# 3. 重启 Nginx 服务
sudo systemctl restart nginx

# 4. 重新加载 Nginx 配置（不重启服务）
sudo systemctl reload nginx

# 5. 查看 Nginx 服务状态
sudo systemctl status nginx

# 6. 启用 Nginx 服务开机自启
sudo systemctl enable nginx

# 7. 禁用 Nginx 服务开机自启
sudo systemctl disable nginx

# 8. 创建或修改服务文件后, 重新加载 systemd 配置以使其生效
sudo systemctl daemon-reload

# 9. 创建一个新的服务文件 nginx.service, 内容参考 systemctl_nginx_service.sh
sudo vi /etc/systemd/system/nginx.service

