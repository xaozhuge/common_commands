# 1. 查看某容器的全部日志
docker logs <容器ID或容器名>

# 2. 实时追踪日志输出
docker logs -f <容器ID或容器名>

# 3. 显示最后 50 行
docker logs --tail 50 <容器ID或容器名>

# 4. 查看过去 10 分钟内的日志
docker logs --since 10m <容器ID或容器名>

