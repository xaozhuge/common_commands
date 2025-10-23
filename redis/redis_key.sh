# 1. 设置键值对
SET key value
# 举例
SET name "zzz"

# 2. 获取键值
GET key
# 举例
GET name

# 3. 删除键
DEL key
# 举例
DEL name

# 4. 检查键是否存在
EXISTS key
# 举例
EXISTS name

# 5. 设置过期时间(秒)
EXPIRE key seconds
# 举例
EXPIRE name 60

# 6. 匹配键(慎用生产环境)
KEYS pattern
# 举例
KEYS user*

# 7. 查看键类型
TYPE key
# 举例
TYPE name

