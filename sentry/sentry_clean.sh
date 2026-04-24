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

# 5. 查看表结构
\d public.nodestore_node

# 6. 查看最早的数据
select timestamp from public.nodestore_node  order by timestamp asc limit 10;

# 7. 利用重命名, 清理数据
# 将数据表 nodestore_node 改名为 nodestore_node_old
ALTER TABLE nodestore_node RENAME TO nodestore_node_old;

# 根据旧的表结构 创建新的数据表 nodestore_node
CREATE TABLE nodestore_node (LIKE nodestore_node_old INCLUDING ALL);

