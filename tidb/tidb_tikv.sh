# 1. TiKV 是一个分布式键值数据库, 具有高性能和水平扩展能力, 由 PingCAP 开发
# 通常用于支持 大规模的数据存储需求, 特别是在构建分布式数据库系统(如 TiDB)

# 2. 核心特性
# 2.1 分布式存储: TiKV 是一个分布式的 NoSQL 数据库, 能够在多台服务器上水平扩展, 自动分片并保持高可用性

# 2.2 强一致性: TiKV 使用 Raft 共识算法, 实现数据强一致性. 
# 每个数据分片都会有多个副本, 其中一个副本是 Leader, 其他是 Follower, Raft 保证了分布式系统的数据一致性

# 2.3 水平扩展: TiKV 支持弹性扩展, 能够在不影响服务的情况下通过增加节点来扩展存储和计算能力

# 2.4 低延迟和高性能: TiKV 对于低延迟请求的支持较好, 因为它将数据放在内存中缓存
# 同时也支持 RocksDB 作为存储引擎, 能够处理高频读写请求

# 2.5 数据安全: TiKV 提供多副本数据存储来保证数据的持久性, 即使某些节点出现故障, 数据依然安全

# 2.6 支持 ACID 事务: 虽然 TiKV 是一个 NoSQL 数据库, 但它提供了原生的分布式事务支持, 实现了分布式环境下的 ACID 属性
