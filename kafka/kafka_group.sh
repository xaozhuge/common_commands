# 1. 列出Kafka中所有的消费者组(consumer groups)
cd /data/kafka_2.13-3.1.1/
bin/kafka-consumer-groups.sh --bootstrap-server 192.168.0.31:19092 --list
# 1.1. 这是Kafka自带的用于管理消费者组的脚本工具
bin/kafka-consumer-groups.sh
# 1.2 指定要连接的 Kafka 集群地址
# 这里连接的IP是 192.168.0.31, 端口为 19092 的Kafka服务
--bootstrap-server 192.168.0.31:19092
# 1.3 表示要执行的操作是列出所有消费者组
--list
# 1.4 执行此命令后, 会返回该 Kafka 集群中所有的消费者组名称列表

# 2. 查看特定消费者组详情
bin/kafka-consumer-groups.sh --bootstrap-server 192.168.0.31:19092 --describe --group <group_name>
# 2.1 查看消费者组的详细信息
--describe
# 2.2 指定要查询的消费者组名称，将 <group_name> 替换为实际的消费者组名
--group <group_name>
# 2.3 输出以下信息
GROUP: 消费者组名称
TOPIC: 该消费者组订阅的主题
PARTITION: 主题的分区编号
CURRENT-OFFSET: 消费者组当前已提交的偏移量(offset)

# 3. 查看消费者组的消费偏移量
bin/kafka-consumer-groups.sh --bootstrap-server 192.168.0.31:19092 --describe --group <group_name> --offsets

# 4. 重置消费者组的偏移量
bin/kafka-consumer-groups.sh --bootstrap-server 192.168.0.31:19092 --reset-offsets --group <group_name> --to-earliest --topic <topic_name> --execute

