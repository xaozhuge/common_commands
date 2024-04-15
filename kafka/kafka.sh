# 1. 列出topic
./kafka-topics.sh --list --bootstrap-server 173.16.0.62:9092
# 2. 创建topic
./kafka-topics.sh --bootstrap-server 173.16.0.62:9092 --create --topic example
# 3. 从latest位移位置开始消费该主题的所有分区消息，即仅消费正在写入的消息
./kafka-console-consumer.sh --bootstrap-server 173.16.0.62:9092 --topic example


