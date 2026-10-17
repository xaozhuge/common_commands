# 1. -H 全称 --header, 用于 自定义 HTTP 请求头, 可以添加 / 覆盖请求头, 多个请求头写多个 -H
curl -H "Header名: Header值" URL
# 冒号: 后面必须有空格
# 多个请求头: 多个 -H
# 如果值包含空格, 一定要用引号包裹
# -H 会覆盖 curl 默认自带的请求头(如 User-Agent)

# 2. 设置 User-Agent
curl -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" https://a.com/headers

# 3. 设置 Content-Type(POST 请求常用)
curl -H "Content-Type: application/json" https://a.com/headers

# 4. 携带 Token / Authorization 认证头
# Bearer token
curl -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..." https://a.com/headers

# Basic auth(简单认证，也可以用 -u, 这里用H演示)
curl -H "Authorization: Basic YWRtaW46MTIzNDU2" https://a.com/headers

# 5. 一次性传多个 Header(多个 -H)
curl \
-H "Content-Type: application/json" \
-H "Authorization: Bearer abc123" \
-H "Accept: application/json" \
-H "Referer: https://a.com" \

