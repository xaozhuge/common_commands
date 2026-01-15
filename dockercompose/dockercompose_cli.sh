# 1. 后台启动所有服务
docker-compose up -d

# 2. 重新构建镜像并启动
docker-compose up --build

# 3. 停止并删除容器、网络
docker-compose down

