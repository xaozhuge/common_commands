# 1. 后台启动所有服务
docker-compose up -d

# 2. 重新构建镜像并启动
docker-compose up --build

# 3. 停止并删除容器、网络
docker-compose down

# 4. 同时删除数据卷
docker-compose down --volumes 

# 5. 列出所有容器状态
docker-compose ps

# 6. 实时查看日志
docker-compose logs -f

# 7. 启动已停止的容器
docker-compose start

# 8. 停止运行中的容器
docker-compose stop

# 9. 重启服务
docker-compose restart

# 10. 进入容器
# 进入web服务的容器
docker-compose exec web bash

# 11. 构建镜像
# 构建所有服务镜像
docker-compose build
# 不使用缓存构建
docker-compose build --no-cache

# 12. 拉取所有服务依赖的镜像
docker-compose pull

# 13. 验证docker-compose.yml文件语法
docker-compose config

# 二、常用参数说明
# -d: 后台运行(detached模式)

# --build: 启动前重新构建镜像

# --force-recreate: 强制重新创建容器

# --volumes: 删除数据卷

# --no-cache: 构建时不使用缓存

