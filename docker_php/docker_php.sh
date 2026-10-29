# 1. 修改 容器外 php.ini 的 配置后, 需要重启容器才能生效
docker restart php56_c
docker restart php73_c
docker restart php85_c

# 2. 查看php.ini的配置是否生效
docker exec -it php56_c php -i|grep memory_limit
docker exec -it php73_c php -i|grep memory_limit

# 3. 在 docker-compose.yml 里只构建 php85 镜像
# 使用缓存构建
docker compose build php85
# 如果不使用缓存构建
docker compose build --no-cache php85

# 4. 用新镜像启动 php85 容器
docker compose up -d --no-deps php85
docker-compose up -d --no-deps php85

# 5. 删除旧的 php85_c 容器
docker rm -f php85_c

# 6. 验证 php85_c 容器里的 max_children 相关配置是否生效(容器内没有ps)

