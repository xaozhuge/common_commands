# 1. 在TiDB的架构中, TiPD是 Placement Driver 的缩写, 主要是TiDB集群的 元数据管理和调度核心
# 它在整个TiDB集群中扮演了一个重要的协调和管理角色

# 2. TiPD的核心作用
# 2.1 集群元数据存储和管理:
# TiPD负责存储整个集群的元信息, 比如: 数据的分片(Region)信息、每个Region的Leader和副本的分布情况、TiKV节点的拓扑和状态
# TiPD使用ETCD来存储这些元数据, 因此具有高一致性和高可用性

# 2.2 Region调度:
# TiPD根据集群的负载和健康状态动态调度Region, 包括:
# 分片均衡: 确保每个TiKV节点的负载均衡
# 副本调度: 在某些TiKV节点失效时将数据副本迁移到健康节点
# Leader调度: 动态调整Region Leader的分布以优化性能

