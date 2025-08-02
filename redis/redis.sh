# 1. 找到含有keywords的key
# 1.1 登录redis交互模式后执行
redis-cli
keys '*keywords*'

# 1.2 命令行执行
redis-cli keys '*keywords*'

# 1.3 docker容器外执行
docker exec 容器ID/容器名称 redis-cli keys '*keywords*'

# 2. 找到含有keywords的key并批量删除
redis-cli keys '*keywords*'|xargs redis-cli del

# 3. 链接redis
redis-cli -h 127.0.0.1 -p 6379
# 密码登录
redis-cli -h 127.0.0.1 -p 6379 -a 密码


# 4. 关闭redis
/alidata/server/redis-3.0.2/src/redis-cli shutdown

# 5. MEMORY USAGE 是 Redis 提供的用于查看某个键(key)在 Redis 中占用的内存大小(以字节为单位)
# redis_key_name 支持是 list 的key值
MEMORY USAGE redis_key_name

# 6. 密码验证
127.0.0.1:6379> keys *
(error) NOAUTH Authentication required.
127.0.0.1:6379> auth 密码

