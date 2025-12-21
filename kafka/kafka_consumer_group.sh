# 一、消费者组操作
# 使用 kafka-consumer-groups.sh 脚本管理消费者组
# 1.​ 查看消费者组列表​
$KAFKA_HOME/bin/kafka-consumer-groups.sh --list --bootstrap-server localhost:9092

# 2. ​查看特定消费者组的详情(消费滞后情况)
# 查看组内每个分区的消费偏移量、最新偏移量和滞后量
$KAFKA_HOME/bin/kafka-consumer-groups.sh --describe \
  --bootstrap-server localhost:9092 \
  --group my-console-consumer-group

# 输出示例:
GROUP: my-console-consumer
TOPIC: test-topic
PARTITION: 0
CURRENT-OFFSET: 5
LOG-END-OFFSET: 5
LAG: 0
CONSUMER-ID: consumer-1
HOST: /127.0.0.1 
CLIENT-ID: consumer-1

# CURRENT-OFFSET: 消费者当前消费到的位置
# LOG-END-OFFSET: 分区中最新消息的位置
# LAG: 滞后量, 即未消费的消息数. 这是监控消费健康度的关键指标

# 3. 重置消费者组偏移量
# 常用于重新消费数据或跳过一些问题消息
# 将偏移量重置到最早的位置

