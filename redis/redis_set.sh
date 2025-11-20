# 1. 添加成员
SADD key member	
# 举例
SADD tags "redis" "db"

# 2. 查看所有成员
SMEMBERS key
# 举例
SMEMBERS tags

# 3. 判断是否存在
SISMEMBER key member
# 举例
SISMEMBER tags "redis"

