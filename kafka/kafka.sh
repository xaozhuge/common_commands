# 1. 列出topic, 用于列出 Apache Kafka 集群中所有主题(topics)的命令
./kafka-topics.sh --list --bootstrap-server 173.16.0.62:9092
# ./kafka-topics.sh: 这是 Kafka 提供的一个命令行工具脚本, 用于管理 Kafka 主题(如创建、删除、列出主题等)
# 通常位于 Kafka 安装目录的 bin 文件夹下

# 2. 创建topic
./kafka-topics.sh --bootstrap-server 173.16.0.62:9092 --create --topic example
# 3. 从latest位移位置开始消费该主题的所有分区消息，即仅消费正在写入的消息
./kafka-console-consumer.sh --bootstrap-server 173.16.0.62:9092 --topic example
# 4. 从开始位置消费，并写入文件
./kafka-console-consumer.sh --bootstrap-server 173.16.0.62:9092 --from-beginning --topic example > temp.log
# 5. 查看所有消费组详情
./kafka-consumer-groups.sh --bootstrap-server 173.16.0.62:9092 --describe --all-groups

