# 1. 将同一个数据库的数据 导入目标表
insert into to_table_name
(column1, column2, column3)
select columna, columnb, columnc from database_name.from_table_name
