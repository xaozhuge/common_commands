# 一、消费者组操作
# 使用 kafka-consumer-groups.sh 脚本管理消费者组
# 1.​ 查看消费者组列表​
$KAFKA_HOME/bin/kafka-consumer-groups.sh --list --bootstrap-server localhost:9092

# 2. ​查看特定消费者组的详情(消费滞后情况)

