# 1. 查找程序使用的pid
ps axu|grep dump_append_sql.py|grep -v 'grep'
ps axu|grep dump_append_sql.py|grep -v 'grep'|awk '{print $2}'

# 2. 查找程序使用的pid并关闭
ps axu|grep dump_append_sql.py|grep -v 'grep'|awk '{print $2}'|xargs kill -9


