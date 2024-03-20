1. 查看容器的日志
cd $(docker inspect --format='{{.LogPath}}' 容器名 | xargs dirname)