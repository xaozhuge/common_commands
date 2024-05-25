# 1. 指定 请求方法为 POST
curl -X POST

# 2. 设置 Content-Type 为 application/json 或者 application/x-www-form-urlencoded
curl -H "Content-Type: application/json"
curl -H "Content-Type: application/x-www-form-urlencoded"

# 3. 使用 -d 选项来指定请求的表单数据 或者 指定 JSON 数据
curl -d "key1=value1&key2=value2"
curl -d '{"key1":"value1", "key2":"value2"}'
