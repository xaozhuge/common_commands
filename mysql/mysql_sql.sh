# 1. 查看mysql 进程 并 杀掉进程
SELECT * FROM information_schema.processlist order by TIME desc
kill id

# 2. 查询表的所有字段
SELECT GROUP_CONCAT(column_name) FROM information_schema. COLUMNS where table_name = ''



