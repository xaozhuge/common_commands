# 1. -X: 全称 --request
# 指定 HTTP 请求方法, 用来替换 curl 默认的 GET
# 语法: curl -X <METHOD> URL
# 常用方法: GET、POST、PUT、DELETE、PATCH、HEAD

# 2. -X GET 一般没必要写, curl 默认就是 GET
# -X 仅仅 修改请求方法, 不会自动携带请求体、header, POST 带数据还需要 -d/--data

# 3. POST 示例(最常用)
# -d: 携带请求体数据
# 表单提交 application/x-www-form-urlencoded
curl -X POST -d "name=zhangsan&age=20" https://a.com/post

# JSON提交, 需要手动加 Content-Type header
curl -X POST -H "Content-Type: application/json" -d '{"name":"zhangsan"}' https://a.com/post

# 4. PUT 示例(更新资源)
curl -X PUT -H "Content-Type: application/json" -d '{"name":"lisi"}' https://a.com/put

# 5. DELETE 示例(删除资源)
curl -X DELETE https://a.com/delete

# 6. PATCH 局部更新
curl -X PATCH -H "Content-Type: application/json" -d '{"age":22}' https://a.com/patch

# 7. HEAD 只拿响应头, 不返回 body
# 简写等价 curl -I https://a.com/get
curl -X HEAD https://a.com/get

# 8. GET(冗余写法，仅演示)
# 等价 curl https://a.com/get
curl -X GET https://a.com/get

# 9. 常用配套参数和 -X 一起用
# -H "key: value"  设置请求头
# -d "xxx"/--data  请求体

