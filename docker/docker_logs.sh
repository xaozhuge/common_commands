# 1. 查看某容器的全部日志
docker logs <容器ID或容器名>

# 2. 实时追踪日志输出
docker logs -f <容器ID或容器名>

# 3. 显示最后 50 行
docker logs --tail 50 <容器ID或容器名>

# 4. 查看过去 10 分钟内的日志
docker logs --since 10m <容器ID或容器名>

# 5. 显示某时间之后的日志	
docker logs --since "2024-05-01T00:00:00" <容器ID或容器名>

# 6. 显示某时间之前的日志	
docker logs --until "2024-05-01T01:00:00" <容器ID或容器名>

# 7. 查看特定时间段的日志
docker logs --since "2024-05-01T00:00:00" --until "2024-05-01T01:00:00" <容器ID或容器名>

# 8. 加上时间戳查看日志
docker logs --timestamps <容器ID或容器名>

# 9. 只显示"现在起"之后的新日志内容
docker logs -f --since=0s <容器ID或容器名>

