# 1. 添加带分值的成员
ZADD key score member
# 举例
ZADD ranking 100 "Alice"

# 2. 按索引范围查询
ZRANGE key start stop
# 举例
ZRANGE ranking 0 -1

# 3. 倒序查询

