# 1. group_concat 使用
GROUP_CONCAT([DISTINCT] 字段 [order by 排序字段 ASC/DESC ] [Separator '分隔符'])

# 2. group之后 按照排序 取字段
GROUP_CONCAT(id ORDER BY time DESC)

# 3. 取第一个数据
substring_index(GROUP_CONCAT(id ORDER BY time DESC), ',' , 1) id

