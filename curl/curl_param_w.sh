# 1. curl -w 作用
# -w(--write-out): 请求结束后, 按照指定格式输出自定义信息
# 用来打印请求耗时、状态码、IP、重定向路径、响应大小等调试指标, 方便接口性能排查、脚本自动化解析结果

# 2. 常用内置变量(核心)
# %{http_code}: HTTP 状态码 (200/404/500)
# %{time_total}: 整个请求总耗时(秒, 浮点)
# %{time_connect}: TCP 连接耗时
# %{time_starttransfer}: 从请求发起到收到第一个字节的耗时(TTFB)
# %{size_download}: 下载字节数
# %{remote_ip}: 服务端 IP
# %{redirect_url}: 重定向地址

# 3. 语法两种写法:
# 直接字符串:
curl -w "格式字符串"

# 外部文件:
curl -w @filename

# 4. 只打印状态码 + 总耗时
# -s: 静默模式，不输出进度
# -o /dev/null: 丢弃响应正文, 只看 -w 统计信息
curl -w "状态码：%{http_code}, 总耗时：%{time_total}s\n" \
-o /dev/null -s https://www.baidu.com

# 5. 完整性能指标(最常用)
curl -s -o /dev/null \
-w "
HTTP状态码: %{http_code}
TCP连接耗时: %{time_connect}s
首字节TTFB: %{time_starttransfer}s
总耗时: %{time_total}s

