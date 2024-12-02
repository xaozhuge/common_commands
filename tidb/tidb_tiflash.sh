# 1. TiFlash是TiDB集群中的列存储引擎, 它扩展了TiDB的功能, 提供对分析型查询(OLAP)的支持

# 2. TiFlash的作用主要体现在
# 2.1 列存储优化: 
# TiFlash采用列式存储, 适合于大规模的数据分析查询, 尤其是复杂的聚合查询和分析型查询
# 相比TiKV的行存储, TiFlash在这类查询中性能更好

# 2.2 数据复制: 
# TiFlash会定期与TiKV同步数据, 确保数据一致性
# TiFlash中的数据来自TiKV的副本, 采用TiKV的Region和Peer机制进行复制

