# 1. 跨域只会出现在浏览器中

# 2. 出现跨域问题
# 2.1 未设置 Access-Control-Allow-Origin
header('Access-Control-Allow-Origin:*');

# 2.2 未设置 允许的header参数 
header('Access-Control-Allow-Headers:source');

