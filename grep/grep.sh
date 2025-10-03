# 1. -o参数表示, 只输出匹配到的内容(而非整行), 适合提取局部文本
grep -o '{.*}' logfile.log
# 例如
2025-03-28 13:55:04:{"name":"test","req_time":10}
res: {"name":"test","req_time":10}

# 2. 只匹配完整的单词
grep -w "完整单词"

# 3. 找到keywords后, 向后显示5行
grep -A 5 keywords

# 4. 找到keywords后, 向前显示5行
grep -B 5 keywords

# 5. -i: 忽略大小写
grep -i keywords

# 6. -n: 显示匹配行的行号

