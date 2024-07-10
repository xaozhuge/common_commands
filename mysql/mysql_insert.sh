# 1. 将同一个数据库的数据 导入目标表
insert into to_table_name
(column1, column2, column3)
select columna, columnb, columnc from database_name.from_table_name

# 2. 快速查询一个表有哪些字段, 并且是逗号分隔
SELECT GROUP_CONCAT(column_name) FROM information_schema.COLUMNS where table_name = ''
SELECT GROUP_CONCAT(column_name) FROM information_schema.COLUMNS where table_name = '' and table_schema = ''
