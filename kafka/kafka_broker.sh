# 1. 在Kafka中, Broker是核心服务节点, 负责消息的存储、传递和集群协调

# 2. Broker的核心角色
# 消息存储: 接收生产者(Producer)发送的消息, 持久化到磁盘(基于log.dirs配置的目录)
# 消息分发: 将消息推送给消费者(Consumer), 并管理消费者的偏移量(Offset)
# 集群协调: 通过ZooKeeper(或KRaft模式)与其他Broker协作, 维护副本(Replicas)、选举Leader等

