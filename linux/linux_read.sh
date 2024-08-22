# 1. <<< 是Bash中的 here string, 用于将 一个字符串 直接作为 标准输入 传递给命令
# read 可以从 标准输入 中读取数据, 并将其赋值给变量
# 这里, "192.168.1.1 admin password123" 是一个字符串, <<< 将它直接提供给 read
# read 会将这个字符串按空格分隔, 并将部分赋值给指定的变量
read host username password <<< "192.168.1.1 admin password123"

