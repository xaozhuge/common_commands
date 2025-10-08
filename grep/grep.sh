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
# 在 file.txt 中搜索包含 "error" 的行(区分大小写)
grep "error" file.txt
# 在当前目录及子目录的所有文件中递归搜索 "error" (忽略大小写)
grep -r -i "error" .

# 6. -n: 显示匹配行的行号
grep -n keywords

# 7. -r或-R: 递归搜索目录下的所有文件
grep -r keywords

# 8. -v: 反向选择, 即显示不匹配的行
grep -v keywords
# 显示系统进程中所有不包含 "chrome" 的进程
ps aux | grep -v "chrome"

# 9. -l: 只显示包含匹配项的文件名
grep -l keywords

# 10. 概念
核心功能: 过滤文本行

