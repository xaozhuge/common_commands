# 查看mysql 进程
SELECT * FROM information_schema.processlist order by TIME desc
# 杀掉进程
kill id
# 查询表的所有字段
SELECT GROUP_CONCAT(column_name) FROM information_schema. COLUMNS where table_name = ''
# 查询表的所有字段
SELECT column_name FROM information_schema. COLUMNS where table_name = ''
