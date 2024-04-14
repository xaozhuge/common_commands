# 查看mysql 进程
SELECT * FROM information_schema.processlist order by TIME desc
# 杀掉进程
kill id
# 查询表的所有字段
SELECT GROUP_CONCAT(column_name) FROM information_schema. COLUMNS where table_name = ''
# 查询表的所有字段
SELECT column_name FROM information_schema. COLUMNS where table_name = ''
# 替换
update table_name set content=replace(content,'a','b') 
# 添加账号
grant all privileges on *.* to 'username'@'%' identified by 'password';
# 重启
/etc/init.d/mysqld restart
# 从文件中获取账号、密码
read username password <<< `cat server.txt |awk -F ':' '{print $1,$2}'`



