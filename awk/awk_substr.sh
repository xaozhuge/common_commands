# 1. 打印每一行的前16字符
# awk 表示 每一行都执行的命令
# $0  表示 列, 这里$0 表示 完整列
# substr($0, 1, 16) 表示 截取每一行的前16位字符
tail -n 10 2025-05-30.log | awk '{ print substr($0, 1, 16) }'

# 2. 打印每一行的第5列
# 每一行都执行打印第5列
tail -n 10 2025-05-30.log | awk '{ print $5 }'

# 3. 对比
# 每一行都执行打印第5列, 每一行都对第一列执行从第2位开始,截取18位,并且打印
# 对输出的结果进行排序, 对相邻的数据进行去重统计，按照统计数目由大到小排序
cat 2025-05-30.log|awk '{print $5}'|awk '{print substr($1,2,18)}' |sort |uniq -c|sort -nr

# 每一行都执行打印第5列, 每一行都对第一列执行从第2位开始,截取18位,并赋值给变量key
# 每一列都执行以key作为键值的计数, 打印key的数目和键值, 按照统计数目由大到小排序
cat 2025-05-30.log|awk '{print $5}'|awk '{key=substr($1,2,18);count[key]++;print count[key]"  "key}' |sort -nr

# 每一行都执行打印第5列, 每一行都对第一列执行从第2位开始,截取18位,并赋值给变量key
# END { ... } 在所有输入处理完之后执行的块
# for (k in count) 遍历所有不同的前16字符 key
cat 2025-05-30.log|awk '{print $5}'|awk '{key=substr($1,2,18);count[key]++;} END {for (k in count) print count[k], k}'  |sort -nr

