# 1. 启动 zookeeper
cd /data/kafka_2.13-3.1.1/
sh bin/zookeeper-server-start.sh config/zookeeper.properties &

# 2. 关闭 zookeeper
sh /data/kafka_2.13-3.1.1/bin/zookeeper-server-stop.sh

# 3. 启动 kafka
cd /data/kafka_2.13-3.1.1/
sh bin/kafka-server-start.sh config/server.properties > kafka.log

# 假设 Kafka 安装在 $KAFKA_HOME 目录下
# Kafka 旧版本依赖 ZooKeeper 来管理元数据

