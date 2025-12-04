# 1. 创建一个名为 ‘test-topic’ 的主题，1个分区，1个副本
$KAFKA_HOME/bin/kafka-topics.sh --create \
  --bootstrap-server localhost:9092 \ # Kafka 服务地址
  --replication-factor 1 \
  --partitions 1 \
  --topic test-topic

# 2. 创建主题时直接指定配置(如日志保留时间)
$KAFKA_HOME/bin/kafka-topics.sh --create \
  --bootstrap-server localhost:9092 \
  --partitions 3 \
  --replication-factor 1 \
  --config retention.ms=172800000 \ # 消息保留2天
  --topic my-configed-topic

# 3. 查看主题列表​
$KAFKA_HOME/bin/kafka-topics.sh --list --bootstrap-server localhost:9092

