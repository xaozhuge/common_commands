# 1. 容器外执行命令
docker exec 容器名/容器ID Linux命令
docker exec kafka_c sh -c "cd /data/kafka/bin; ./kafka-topics.sh --list --bootstrap-server 127.0.0.1:9092"
docker exec nginx122_c nginx -s reload

