# 1. 使用 -s 表示 "静默模式", 意味着在执行命令时不会显示下载进度或错误信息
# --silent,安静模式, 不输出任何内容(包括错误和进度)
curl -s http://example.com

# 2. 使用 -S 
# --show-error, 显示错误(仅当与 -s 搭配时才有意义)
curl -s -S http://example.com

