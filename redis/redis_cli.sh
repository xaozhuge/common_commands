# 1. 切换 redis 数据库
# Redis 默认支持多个数据库(通常编号从 0 到 15)
SELECT <db_index>
# 例如 切换数据库
select 1
# 默认的数据库
select 0

# 2. 查看数据库信息
INFO keyspace
# 结果
# Keyspace
db0:keys=11004,expires=1,avg_ttl=55700655
db1:keys=1,expires=1,avg_ttl=85703881

