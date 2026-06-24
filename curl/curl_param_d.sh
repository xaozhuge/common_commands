# 1. -d(全称 --data): 用于发送 POST 请求, 携带请求体数据
# 默认请求头: Content-Type: application/x-www-form-urlencoded(表单格式)

# 2. 常用等价写法
curl -d "key1=val1&key2=val2" baidu.com
curl --data "key1=val1&key2=val2" baidu.com

