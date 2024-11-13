# 1. TiKV 是一个分布式键值数据库, 具有高性能和水平扩展能力, 由 PingCAP 开发
# 通常用于支持 大规模的数据存储需求, 特别是在构建分布式数据库系统(如 TiDB)

# 2. 核心特性
# 2.1 分布式存储: TiKV 是一个分布式的 NoSQL 数据库, 能够在多台服务器上水平扩展, 自动分片并保持高可用性

# 2.2 强一致性: TiKV 使用 Raft 共识算法, 实现数据强一致性. 
# 每个数据分片都会有多个副本, 其中一个副本是 Leader, 其他是 Follower, Raft 保证了分布式系统的数据一致性

