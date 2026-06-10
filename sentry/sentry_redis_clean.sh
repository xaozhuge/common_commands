# 1. 登录 sentry的redis 容器
docker exec -it sentry-self-hosted-redis-1 redis-cli

# 2. 清除redis
FLUSHDB ASYNC

