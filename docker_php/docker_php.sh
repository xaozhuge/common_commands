# 1. 修改 容器外 php.ini 的 配置后, 需要重启容器才能生效
docker restart php56_c
docker restart php73_c
docker restart php85_c

# 2. 查看php.ini的配置是否生效
docker exec -it php56_c php -i|grep memory_limit
docker exec -it php73_c php -i|grep memory_limit

# 3. 在 docker-compose.yml 里只构建 php85 镜像
docker compose build php85

# 4. 用新镜像启动 php85 容器

