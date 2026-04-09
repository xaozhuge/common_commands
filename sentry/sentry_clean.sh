# sentry 数据清理
# 1. 首先进入postgres容器
docker exec -it sentry-self-hosted-postgres-1  /bin/bash

# 2. 切换用户
su postgres

# 3. 进入postgres
psql

# 4. 查看表数据
# 在清理前后可以查看下这个表占用的空间
SELECT table_schema || '.' || table_name AS table_full_name, pg_size_pretty(pg_total_relation_size('"' || table_schema || '"."' || table_name || '"')) AS size FROM information_schema.tables ORDER BY
pg_total_relation_size('"' || table_schema || '"."' || table_name || '"') DESC limit 20;

