# 1. <<< 是Bash中的 here string, 用于将 一个字符串 直接作为 标准输入 传递给命令
# read 可以从 标准输入 中读取数据, 并将其赋值给变量
# 这里, "192.168.1.1 admin password123" 是一个字符串, <<< 将它直接提供给 read
# read 会将这个字符串按空格分隔, 并将部分赋值给指定的变量
read host username password <<< "192.168.1.1 admin password123"

# 2. $(...) 这是命令替换语法, 表示将 $(...) 内部命令的输出结果作为字符串替换
# <<< 是 Here String 特性, 它将命令替换的输出结果作为 read 命令的标准输入
# 先将res变量的内容通过echo输出, 然后通过awk命令提取出第5和第6列的内容
# read 命令从标准输入读取内容, 并按空格分隔将值赋给变量 user 和 time
read user time <<< $(echo $res | awk '{print $5, $6}')

