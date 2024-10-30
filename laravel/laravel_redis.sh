# 1. 配置 .env
vi .env
CACHE_DRIVER=redis
REDIS_HOST=127.0.0.1
REDIS_PORT=6379

# 2. redis存储位置
127.0.0.1:6379> select 1
127.0.0.1:6379[1]> keys *

