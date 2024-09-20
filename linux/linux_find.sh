# 1. -mtime 是用于匹配文件修改时间的选项
# +5 的意思是查找修改时间超过 5 天的文件(也就是最后修改时间在 5 天之前的文件)
find 路径 -mtime +5

# 2. -type 是用于指定要查找的文件类型
# f 表示只查找普通文件, 不会查找目录或其他类型的文件
find 路径 -type f

