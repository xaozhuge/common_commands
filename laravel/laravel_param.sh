# 1. 用于获取当前 HTTP 请求实例, 可以通过实例访问请求的各种属性和方法(如请求方法、请求参数、请求头等)
$request = app('request');

# 2. 用于获取当前 HTTP 请求中所有输入数据的便捷方法, 它返回一个包含所有请求参数的关联数组
$param = $request->all();

# 3. 用于获取当前 HTTP 请求的所有请求头信息, 返回的数组
$headers = $request->headers->all();

