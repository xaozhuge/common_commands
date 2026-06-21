# 1. 限制 Redis 实例最多使用 8GB 内存
CONFIG SET maxmemory 8gb

# 2. Redis 所有数据(KV、缓存、缓冲区、客户端缓冲区、复制缓冲区等）总占用内存达到 8GB 上限后, 触发淘汰策略

