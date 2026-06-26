# 1. -d(全称 --data): 用于发送 POST 请求, 携带请求体数据
# 默认请求头: Content-Type: application/x-www-form-urlencoded(表单格式)

# 2. 常用等价写法
curl -d "key1=val1&key2=val2" baidu.com
curl --data "key1=val1&key2=val2" baidu.com
curl -X POST -d "key1=val1" baidu.com

# 3. 基础语法
curl -d "参数1=值1&参数2=值2" 请求地址

# 4. 普通表单提交(urlencoded)
# 提交用户名、密码
curl -d "username=admin&password=123456" http://127.0.0.1:8080/login

