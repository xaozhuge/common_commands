# 1. 启动 zookeeper
cd /data/kafka_2.13-3.1.1/
sh bin/zookeeper-server-start.sh config/zookeeper.properties &

# 2. 启动 kafka
cd /data/kafka_2.13-3.1.1/
sh bin/kafka-server-start.sh config/server.properties > kafka.log

