1. 查看容器的日志
name=容器名
cd $(docker inspect --format='{{.LogPath}}' $name | xargs dirname)