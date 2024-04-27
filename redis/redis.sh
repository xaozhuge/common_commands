# 1. 找到含有keywords的key
redis-cli keys '*keywords*'

# 2. 找到含有keywords的key并批量删除
redis-cli keys '*keywords*'|xargs redis-cli del

# 3. 链接redis
redis-cli -h 127.0.0.1 -p 6379

# 4. 关闭redis
/alidata/server/redis-3.0.2/src/redis-cli shutdown

