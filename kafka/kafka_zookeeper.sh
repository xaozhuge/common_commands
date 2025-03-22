# 一、 zookeeper 说明
cd /data/kafka_2.13-3.1.1
sh bin/zookeeper-server-start.sh config/zookeeper.properties &
# 1. 该命令用于启动 Kafka 的 Zookeeper 服务, 并指定配置文件. 
# 通过将命令放到后台运行, 可以避免占用当前终端. 启动后, 需要检查日志和端口, 确保 Zookeeper 正常运行
# Zookeeper 是 Kafka 依赖的分布式协调服务, 用于管理 Kafka 集群的元数据、Broker 注册、Topic 分区等信息

# 2. /data/kafka_2.13-3.1.1/bin/zookeeper-server-start.sh 
# 这是 Kafka 安装目录下的 Zookeeper 启动脚本路径
# /data/kafka_2.13-3.1.1/ 是 Kafka 的安装目录
# bin/zookeeper-server-start.sh 是启动 Zookeeper 的脚本

# 3. config/zookeeper.properties
# 这是 Zookeeper 的配置文件路径
# config/zookeeper.properties 文件包含了 Zookeeper 的配置参数, 例如数据目录、客户端端口、集群配置等

