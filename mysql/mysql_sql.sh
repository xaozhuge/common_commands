# 1. 查看mysql 进程 并 杀掉进程
SELECT * FROM information_schema.processlist order by TIME desc;
SELECT * FROM information_schema.processlist order by TIME desc\G;
kill id
SELECT * FROM information_schema.processlist where info <> ''  order by TIME desc
SELECT * FROM information_schema.processlist where info <> '' and time > 10 order by TIME desc \G;

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

# 7. 将结果转化为in的语句可用
# 查看 group_concat_max_len 长度
show variables like '%group_concat_max_len%'
# 临时扩大 GROUP_CONCAT 长度限制（建议设为 1000000 或更大）

