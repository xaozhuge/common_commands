# 1. lpush 将一个或多个值插入到列表的左侧(头部)
lpush mylist value1 value2
# 左侧插入
LPUSH key value
# 举例
LPUSH list "item1"

# 2. rpush 将一个或多个值插入到列表的右侧(尾部)
rpush mylist value1 value2
# 右侧插入

# 3. lpop 从列表的右侧(尾部)弹出并返回最后一个元素
lpop mylist

# 4. rpop 从列表的右侧(尾部)弹出并返回最后一个元素
rpop mylist

# 5. lrange 获取列表中指定范围内的元素. 索引从0开始,-1表示列表的最后一个元素(获取整个列表)
lrange mylist 0 -1 

# 6. llen 获取列表的长度
llen mylist


