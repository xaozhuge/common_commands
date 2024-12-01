# 1. tidb 论坛
https://asktug.com/

# 2. 架构说明
# TiKV是存储层: 负责存储数据, 提供键值存储接口
# TiPD是管理调度层: 负责元数据管理、负载均衡、时间戳分配和集群健康监控
# TiDB是SQL层: 处理SQL查询和事务, 是TiDB集群的计算引擎
# TiFlash是列存储引擎: 专门优化用于分析型查询, 提升TiDB的OLAP能力

