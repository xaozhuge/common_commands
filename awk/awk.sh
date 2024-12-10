# 1. 命令说明
awk -F 'Time: ' '{split($2, a, ","); if (a[1] > 1000) print $0}'
# 1.1 `-F 'Time: '`  
# 	-F 选项用于指定字段分隔符, 这里将字段分隔符设置为字符串 "Time: ", 这意味着awk将基于这个字符串来分隔每一行的字段
# 1.2 `{split($2, a, ","); if (a[1] > 1000) print $0}`
# 	{}内是awk要执行的操作
# 1.3 `split($2, a, ",")` 
# 	split函数用于将字符串分割成数组, 这里将第二个字段（即$2）按逗号,分割, 并将结果存储在数组a中
# 1.4 `if (a[1] > 1000)`
# 	a[1]表示数组a的第一个元素, 这是一个条件语句, 检查数组a的第一个元素是否大于1000, 如果条件为真，则执行print $0
# 1.5 `print $0`
# 	表示打印整行文本	


# 2. 针对每一行数据使用 ms" 作为分隔符, 将分割后的第一个字段使用空格分割, 将结果存储在数组a中, 打印数组的第4个值
awk -F 'ms"' '{split($1, a, " "); print a[4]}'
# 3. 针对每一行数据使用 ms" 作为分隔符, 将分割后的第一个字段使用空格分割, 将结果存储在数组a中, 如果数组的第4个值大于500, 打印整行数据
awk -F 'ms"' '{split($1, a, " "); if (a[4] > 500) print $0}'


# 4.1 单引号内的部分是awk脚本, 定义了对每行文本的操作: 统计每一行包含的<0x01>字符的数量
# 4.2 NR 是awk的一个内置变量, 表示当前行号
# 4.3 这条命令输出当前行的行号和该行中<0x01>字符的数量
awk '{count=gsub(/\x01/,"&"); print NR, count}' update.*.csv

# 5. 提取json中的字段clientip的值,并去重计数
awk -F '"clientip":"' '{print $2}' access.log | awk -F '"' '{print $1}' | sort | uniq -c | sort -nr
cat filename.log | awk -F '"sp":"' '{print $2}'|awk -F "ms" '$1 > 600' 
cat curl_access-2024-12-10.log|awk -F '"req_time":' '{print $1$2}'|awk -F "," '$2 > 1000'
cat sql-2024-12-10.log|awk -F '"sp_time":' '{print $1$2}'|awk -F '",' '$2+0 > 100'

# 6. 执行时间大于10s的nginx日志
awk '$2 > 10' 2024-10-31.log

# 7. 执行时间大于10s的nginx日志的URI统计
awk '$2 > 10' 2024-10-31.log|awk -F "POST " '{print $2}'|awk '{print $1}'|sort | uniq -c | sort -nr

