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

# 4. ​查看主题详情
# 查看指定主题的详细信息(分区、副本、Leader等)
$KAFKA_HOME/bin/kafka-topics.sh --describe \
  --bootstrap-server localhost:9092 \
  --topic test-topic

# 5. 修改主题
# 增加主题的分区数(注意: Key 的映射会受影响, 只能增加不能减少)
$KAFKA_HOME/bin/kafka-topics.sh --alter \
  --bootstrap-server localhost:9092 \
  --partitions 5 \ # 将分区数修改为5
  --topic test-topic

# 动态修改主题配置

