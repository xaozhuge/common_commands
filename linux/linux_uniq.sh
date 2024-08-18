# 1. uniq用于报告或忽略文本文件中相邻的重复行. 注意: 它只对相邻的重复行起作用
# 因此如果文件中非连续的行相同, uniq不会将它们识别为重复的
# 除非它们经过排序或以其他方式排列成连续的重复行
cat temp.log| uniq 
cat temp.log| sort | uniq

# 2. -c 选项会在输出的每一行前面显示一个计数, 表示该行在输入中连续出现的次数
cat temp.log| sort | uniq -c

