# 1. 容器外执行命令
docker exec 容器名/容器ID Linux命令
docker exec kafka_c sh -c "cd /data/kafka/bin; ./kafka-topics.sh --list --bootstrap-server 127.0.0.1:9092"
docker exec nginx122_c nginx -s reload

# 容器外进入交互模式
docker exec -it 容器名/容器ID Linux命令
docker exec -it redis-cli

# 2. 使用 docker exec 的 --user 选项指定运行命令的用户 ID(UID)和组 ID(GID)
docker exec php73_c whoami
docker exec --user 1000:1000 php73_c whoami

