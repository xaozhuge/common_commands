# 1. 当前时间
nowtime=`date "+%Y-%m-%d %H:%M:%S"`

# 2. 当天日期
# 2.1 date: Unix/Linux 系统中用来显示或设置日期和时间
# 2.2 -d 选项用于指定要显示的日期时间字符串(可以省略)
# 2.3 + 之后的部分用于定义输出的格式
# 2.4 -d 选项接受一个日期字符串作为输入, 并计算出相应的日期时间

date -d "now" +"%Y%m%d"
date -d "yesterday" +"%Y%m%d"
date -d "3 days ago" +"%Y%m%d"
date -d "4 minute ago" +"%Y-%m-%d %H:%M:00"
date -d "20240826 last month" +%Y-%m-%d
date -d "2024-08-26 last day" +%Y-%m-%d

