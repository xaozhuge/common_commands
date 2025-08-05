# 一、登录redis的几种方式
# 1. 方案1
docker exec -it redis-doc /bin/sh
redis-cli
auth 密码

# 2. 方案2
docker exec -it redis-doc /bin/sh
redis-cli -a 密码

# 3. 方案3
docker exec -it redis-doc /bin/sh
export REDISCLI_AUTH="密码"
redis-cli

# 4. 方案4
docker exec -it redis-doc redis-cli -a 密码

# 5. 方案5
docker exec -it -e REDISCLI_AUTH="密码" redis-doc redis-cli

