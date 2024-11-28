# 1. 在TiDB集群中, TiDB是分布式关系型数据库系统的SQL层, 
# 它负责处理SQL查询并将它们转化为对TiKV或TiFlash的底层数据操作

# 2. TiDB是一个无状态的SQL解析和执行引擎, 它将复杂的分布式存储架构抽象为一个对用户透明的关系型数据库

# 3. TiDB 的核心作用和功能
# 3.1 SQL解析和执行:
# TiDB实现了MySQL协议, 支持大部分MySQL5.7的功能
# 它接收用户的SQL查询, 解析、优化, 并将查询计划分发到存储层(主要是 TiKV 或 TiFlash)

# 3.2 分布式事务支持:
# TiDB 提供强一致性事务, 支持标准的 ACID 特性
# 它将事务管理工作交由TiKV的分布式事务实现, 比如使用 Percolator 模型

# 3.3 查询优化:
# TiDB 内置查询优化器, 根据查询条件、索引等信息生成高效的查询计划
# 优化器会选择最优的执行路径(如范围扫描、全表扫描或索引扫描)

