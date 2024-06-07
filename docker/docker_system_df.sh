# 1. 用于显示Docker系统中磁盘空间的使用情况
docker system df
# 1.1 提供了关于 镜像、容器、数据卷、构建缓存 的详细信息, 包括每种资源的大小和数量

# 2. 删除构建缓存, 统计时发现Build Cache占用150G,需要清理
docker builder prune -f




