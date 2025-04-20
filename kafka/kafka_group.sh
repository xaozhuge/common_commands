# 一、参数说明
# 1. 这是Kafka自带的用于管理消费者组的脚本工具
bin/kafka-consumer-groups.sh

# 2. 指定要连接的 Kafka 集群地址
# 这里连接的IP是 192.168.0.31, 端口为 19092 的Kafka服务
--bootstrap-server 192.168.0.31:19092

# 3. 表示要执行的操作是列出所有消费者组
--list

# 4. 指定要查询的消费者组名称, 将 <group_name> 替换为实际的消费者组名
--group <group_name>

# 5. 查看消费者组的详细信息
--describe

# 6. 表示要执行删除操作
--delete

# 二、case
cd /data/kafka_2.13-3.1.1/
# 1. 列出Kafka中所有的消费者组(consumer groups)
# 执行此命令后, 会返回该 Kafka 集群中所有的消费者组名称列表
bin/kafka-consumer-groups.sh \
	--bootstrap-server 192.168.0.31:19092 \
	--list

# 2. 查看特定消费者组详情
bin/kafka-consumer-groups.sh \
	--bootstrap-server 192.168.0.31:19092 \
	--group <group_name> \
	--describe

# 3. 查看消费者组的消费偏移量
bin/kafka-consumer-groups.sh \
	--bootstrap-server 192.168.0.31:19092 \
	--group <group_name> \
	--offsets \
	--describe

# 4. 重置消费者组的偏移量
bin/kafka-consumer-groups.sh \
	--bootstrap-server 192.168.0.31:19092 \
	--group <group_name> \
	--topic <topic_name> \
	--reset-offsets \
	--to-earliest \
	--execute

# 2.3 输出以下信息
GROUP: 消费者组名称
TOPIC: 该消费者组订阅的主题
PARTITION: 主题的分区编号
CURRENT-OFFSET: 消费者组当前已提交的偏移量(offset)
LOG-END-OFFSET: 该分区的最新消息偏移量(即最新生产的消息位置)
LAG: 消费延迟量(LOG-END-OFFSET - CURRENT-OFFSET), 即未消费的消息数
CONSUMER-ID: 消费者实例的ID
HOST: 运行消费者的主机信息
CLIENT-ID: 消费者客户端的ID

