# 一、 zookeeper 说明
cd /data/kafka_2.13-3.1.1
sh bin/zookeeper-server-start.sh config/zookeeper.properties &
# 1. 该命令用于启动 Kafka 的 Zookeeper 服务, 并指定配置文件. 
# 通过将命令放到后台运行, 可以避免占用当前终端. 启动后, 需要检查日志和端口, 确保 Zookeeper 正常运行

