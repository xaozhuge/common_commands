# 一. 说明以下代码
rewrite ^(.*)$ https://$host$1 permanent;
# 1. rewrite: 这是Nginx的重写指令, 用于修改请求的URL

