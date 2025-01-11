# 1. group之后 按照排序 取字段
GROUP_CONCAT(id ORDER BY time DESC)

# 2. 取第一个数据
substring_index(GROUP_CONCAT(id ORDER BY time DESC), ',' , 1) id

