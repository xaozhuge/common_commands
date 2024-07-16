# 1. 查看mysql 进程 并 杀掉进程
SELECT * FROM information_schema.processlist order by TIME desc
kill id

# 2. 查询表的所有字段
SELECT GROUP_CONCAT(column_name) FROM information_schema. COLUMNS where table_name = ''

# 3. 查询表的所有字段
SELECT column_name FROM information_schema. COLUMNS where table_name = ''

# 4. 替换
update table_name set field_name=replace(field_name,'before','after') 

# 5. 查询表的字段注释
SELECT COLUMN_NAME,COLUMN_COMMENT FROM information_schema.COLUMNS WHERE TABLE_SCHEMA='database_name' AND TABLE_NAME='table_name';

# 6. 字段为json
select JSON_EXTRACT(field_name, '$.json_fieldname') as aliasname




