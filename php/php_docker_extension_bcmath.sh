# 一、由于 hashids 需要 bcmath 扩展
# 1. 登录容器
docker exec -it php56_c /bin/bash

# 2. 安装 bcmath 扩展
docker-php-ext-install bcmath

