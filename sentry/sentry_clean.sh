# sentry 数据清理
# 1. 首先进入postgres容器
docker exec -it sentry-self-hosted-postgres-1  /bin/bash

# 2. 切换用户
su postgres

# 3. 进入postgres
psql

# 4. 查看表数据

