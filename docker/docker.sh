# 1. 查看容器的日志
name=容器名
cd $(docker inspect --format='{{.LogPath}}' $name | xargs dirname)

2. 获取所有容器的名称
docker ps -a --format "{{.Names}}" 

3. 进入容器
docker exec -it $name /bin/sh

# 4. 容器外上传到容器内
docker cp test.txt php56_c:/tmp

# 5. 容器内下载到容器外
docker cp kafka_c:/data/kafka/config/server.properties /root

# 6. 运行容器
docker run -t -d openjdk:8

# 7. 容器外执行命令
docker exec kafka_c sh -c "cd /data/kafka/bin; ./kafka-topics.sh --list --bootstrap-server 127.0.0.1:9092"
docker exec nginx122_c nginx -s reload


