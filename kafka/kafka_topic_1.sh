# 创建一个名为 ‘test-topic’ 的主题, 1个分区, 1个副本
$KAFKA_HOME/bin/kafka-topics.sh --create \
  --bootstrap-server localhost:9092 \ # Kafka 服务地址
  --replication-factor 1 \
  --partitions 1 \
  --topic test-topic

