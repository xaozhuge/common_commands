# 1. 启动控制台生产者​
# 用于快速测试, 向指定主题发送消息
$KAFKA_HOME/bin/kafka-console-producer.sh \
  --broker-list localhost:9092 \
  --topic test-topic

# 新版本语法(推荐)
$KAFKA_HOME/bin/kafka-console-producer.sh \
  --bootstrap-server localhost:9092 \
  --topic test-topic

