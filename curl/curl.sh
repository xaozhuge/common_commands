# 1. 指定 请求方法为 POST
curl -X POST

# 2. 设置 Content-Type 为 application/json 或者 application/x-www-form-urlencoded
curl -H "Content-Type: application/json"
curl -H "Content-Type: application/x-www-form-urlencoded"

# 3. 使用 -d 选项来指定请求的表单数据 或者 指定 JSON 数据
curl -d "key1=value1&key2=value2"
curl -d '{"key1":"value1", "key2":"value2"}'

# 4. 使用 --data-urlencode 选项自动对传递的数据进行 URL 编码，包括转义特殊字符，例如 /
curl --data-urlencode "path=controller/method"

# 5. curl模板
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" \
-d "json转get参数" \
--data-urlencode "需要url转码的参数" \
"https://domain/method"

