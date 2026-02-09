# 1. --databases 指定要导出的一个或多个数据库. 使用该选项, mysqldump会在生成的SQL文件中包含创建数据库(CREATE DATABASE)的语句, 并且会在每个数据库的前面使用(USE database_name)语句
# [database_name1] [database_name2] 列出要备份的数据库名称. 可以指定多个数据库名称, 每个数据库名称之间用空格分开
mysqldump --databases [database_name1] [database_name2]

# 2. 导出单个数据表
mysqldump -u 账号 -p 数据库 数据表 > 数据表.sql

# 3. 注意: 通过不使用 --databases 参数, 导出的 SQL 文件将不包含 CREATE DATABASE 和 USE 语句
/data/server/mysql/bin/mysqldump -u username -p database_name > backup.sql	
# 对比使用 --databases
/data/server/mysql/bin/mysqldump -u username -p --databases database_name > backup.sql

# 4. 一个常见的"坑"
# 请注意, 如果备份时使用了 --databases 参数, 生成的 SQL 文件内会包含 USE database_name 语句

