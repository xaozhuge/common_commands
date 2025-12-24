# 1. 启动控制台生产者​
# 用于快速测试, 向指定主题发送消息
$KAFKA_HOME/bin/kafka-console-producer.sh \
  --broker-list localhost:9092 \
  --topic test-topic

# 新版本语法(推荐)
# --bootstrap-server 和 --broker-list 的 不同
$KAFKA_HOME/bin/kafka-console-producer.sh \
  --bootstrap-server localhost:9092 \
  --topic test-topic

# 2. 启动控制台消费者
# 用于快速测试, 从指定主题消费消息
# 从最新消息开始消费
# --from-beginning 加上这个参数表示从最早的消息开始消费
$KAFKA_HOME/bin/kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic test-topic \
  --from-beginning

# 指定消费者组
$KAFKA_HOME/bin/kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic test-topic \
  --group my-console-consumer-group

# 3. ​性能测试 - Kafka自带性能测试工具
# 生产者性能测试: 每秒发送100万条消息, 每条1KB, 共发送5000万条

