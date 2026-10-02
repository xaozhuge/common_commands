# 1. -X: 全称 --request
# 指定 HTTP 请求方法, 用来替换 curl 默认的 GET
# 语法: curl -X <METHOD> URL
# 常用方法: GET、POST、PUT、DELETE、PATCH、HEAD

# 2. -X GET 一般没必要写, curl 默认就是 GET
# -X 仅仅 修改请求方法, 不会自动携带请求体、header, POST 带数据还需要 -d/--data

# 3. POST 示例(最常用)
# -d: 携带请求体数据
# 表单提交 application/x-www-form-urlencoded

