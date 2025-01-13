# 1. group_concat 使用
GROUP_CONCAT([DISTINCT] 字段 [order by 排序字段 ASC/DESC ] [Separator '分隔符'])

# 2. group之后 按照排序 取字段
GROUP_CONCAT(id ORDER BY time DESC)

# 3. 取第一个数据
substring_index(GROUP_CONCAT(id ORDER BY time DESC), ',' , 1) id

# 4. 换分隔符 用竖线拼接
GROUP_CONCAT(id separator '|')

# 5. 字段合并为一行
select GROUP_CONCAT(id) from test limit 10

# 6. 注意
GROUP_CONCAT(字段) 有长度限制

# 7. 查询一个表所有字段, 注意不同database下是否有同名表,加上database的限制
SELECT GROUP_CONCAT(COLUMN_NAME) FROM information_schema.COLUMNS WHERE table_name='表名称';

