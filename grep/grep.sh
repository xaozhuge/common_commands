# 1. -o参数表示, 只输出匹配到的内容(而非整行), 适合提取局部文本
grep -o '{.*}' logfile.log
# 例如
2025-03-28 13:55:04:{"name":"test","req_time":10}
res: {"name":"test","req_time":10}

