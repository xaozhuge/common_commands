1. 查看容器的日志
name=容器名
cd $(docker inspect --format='{{.LogPath}}' $name | xargs dirname)

2. 获取所有容器的名称
docker ps -a --format "{{.Names}}" 

3. 进入容器
docker exec -it $name /bin/sh