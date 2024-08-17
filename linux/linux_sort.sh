# 1. sort是一个用于排序文本行的命令. 
# 默认情况下, 它会按字母顺序(ASCII码顺序)对文本行进行升序排序
ls | sort

# 2. -r选项表示反转排序的顺序, 将结果按降序排列
# 对于文本中的数字、字母等, 降序意味着较大的值或较晚的字母排在前面
ls | sort -r 

# 3. 
# -n 选项按数值顺序而不是字母顺序进行排序, 会把每一行的内容解释为数字, 并按数值从小到大排序
# 注意: 字符串11和字符串2 与 数字11和数字2 的排序区别
ls | uniq -c | sort -n -r 

# 3. 应用场景
# 3.1 对文件内容或命令输出结果按降序排列, 例如从大到小排列数字, 或者从Z到A排列字母
# 3.2 在分析数据时, 快速获取最大或最晚的项
