# 1. 设置字段值
HSET key field value
# 举例
HSET user:1 name "John" age 30

# 2. 获取字段值
HGET key field
# 举例
HGET user:1 name

# 3. 获取所有字段
HGETALL key
# 举例
HGETALL user:1

# 4. 删除字段	
HDEL key field	

