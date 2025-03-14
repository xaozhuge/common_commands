# 1. 查看 kafka-topics.sh 命令的选项和说明
# kafka-topics.sh: 这是 Kafka 提供的一个命令行工具脚本, 用于管理 Kafka 主题(如创建、删除、列出主题等)
# Create, delete, describe, or change a topic
# 通常位于 Kafka 安装目录的 bin 文件夹下
cd /data/kafka_2.13-3.1.1/bin/
./kafka-topics.sh

# 2. --list: List all available topics
# --list: 这是 kafka-topics.sh 脚本的一个选项, 表示列出 Kafka 集群中的所有主题
./kafka-topics.sh --list

# 3. --bootstrap-server <String: server to connect to>   
# REQUIRED: The Kafka server to connect to
# 该命令会连接到指定的 Kafka 集群(173.16.0.62:9092), 并列出该集群中所有的主题(topics)
./kafka-topics.sh --bootstrap-server 173.16.0.62:9092
# --bootstrap-server 是指定 Kafka 集群的地址和端口
# 173.16.0.62:9092 是 Kafka 集群中的一个 broker 地址和端口. Kafka 客户端会通过这个地址连接到集群, 并获取集群的元数据信息

# 4. --exclude-internal: exclude internal topics when running list or describe command. 
# The internal topics will be listed by default   

