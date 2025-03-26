# 1. 列出Kafka中所有的消费者组(consumer groups)
cd /data/kafka_2.13-3.1.1/
bin/kafka-consumer-groups.sh --bootstrap-server 192.168.0.31:19092 --list

# 1.1. 这是Kafka自带的用于管理消费者组的脚本工具
bin/kafka-consumer-groups.sh

# 1.2 指定要连接的 Kafka 集群地址
# 这里连接的IP是 192.168.0.31, 端口为 19092 的Kafka服务
--bootstrap-server 192.168.0.31:19092

