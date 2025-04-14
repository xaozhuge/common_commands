# 1. 在Kafka中, Broker是核心服务节点, 负责消息的存储、传递和集群协调

# 2. Broker的核心角色
# 消息存储: 接收生产者(Producer)发送的消息, 持久化到磁盘(基于log.dirs配置的目录)
# 消息分发: 将消息推送给消费者(Consumer), 并管理消费者的偏移量(Offset)
# 集群协调: 通过ZooKeeper(或KRaft模式)与其他Broker协作, 维护副本(Replicas)、选举Leader等

# 3. Broker的工作流程示例
# 生产者发送消息: Producer向Topic的某个分区Leader(位于某Broker)发送消息
# Broker持久化消息: Leader Broker将消息写入磁盘, 并同步给Follower Broker(保证副本一致性)
# 消费者拉取消息: Consumer从Leader Broker拉取消息, Broker记录消费进度(Offset)

# 4. Broker的配置核心参数
# broker.id: 唯一标识, 集群内不能重复
eg: broker.id=0

# log.dirs: 数据存储路径(分区日志文件存放位置)
eg: log.dirs=/data/kafka/data

# zookeeper.connect: 指定ZooKeeper地址(集群协调依赖)
eg: zookeeper.connect=localhost:2181

# 5. listeners和advertised.listeners	
# listeners: Broker绑定的真实地址, 服务端视角
# advertised.listeners: 客户端实际连接的地址, 必须可路由

# 6. --bootstrap-servers必须使用advertised.listeners的地址
# 选择INTERNAL或OUTSIDE取决于客户端网络位置:
# 内网客户端 → INTERNAL地址(低延迟、无需加密)
# 外网客户端 → OUTSIDE地址(需确保可路由, 通常需加密)

