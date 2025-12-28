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
$KAFKA_HOME/bin/kafka-producer-perf-test.sh \
  --topic test-perf \
  --num-records 50000000 \
  --record-size 1024 \
  --throughput 1000000 \
  --producer-props bootstrap.servers=localhost:9092

# 消费者性能测试
$KAFKA_HOME/bin/kafka-consumer-perf-test.sh \
  --topic test-perf \
  --broker-list localhost:9092 \
  --messages 50000000

# 4. 导出/导入镜像(Dump Log)
# 查看主题底层日志文件的内容
# 将主题消息导出到文件
$KAFKA_HOME/bin/kafka-dump-log.sh \
  --files /tmp/kafka-logs/test-topic-0/00000000000000000000.log \
  --print-data-log

