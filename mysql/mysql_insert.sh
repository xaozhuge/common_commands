# 1. 将同一个数据库的数据 导入目标表
insert into to_table_name
(column1, column2, column3)
select columna, columnb, columnc from database_name.from_table_name

# 2. 快速查询一个表有哪些字段, 并且是逗号分隔
SELECT GROUP_CONCAT(column_name) FROM information_schema.COLUMNS where table_name = ''
SELECT GROUP_CONCAT(column_name) FROM information_schema.COLUMNS where table_name = '' and table_schema = ''

# 3. 插入数据
# 3.1 写入完整字段-完整而且有顺序的列
insert into table_name values (字段值);
# 3.2 写入完整字段-列名完整可以无序-对应的列值
insert into table_name (字段名) values (字段值);
# 3.3 写入部分字段-列名部分可以无序-对应的列值
insert into table_name (字段名) values (字段值);
# 3.4 批量添加
insert into table_name ([字段名1], [字段名2]) values ([字段值1],[字段值2]), ([字段值1],[字段值2]);

