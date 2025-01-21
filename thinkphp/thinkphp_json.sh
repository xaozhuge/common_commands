# 1. 如果 Content-Type: application/json, 获取请求参数
$json_str  = file_get_contents('php://input');
$json_array = json_decode($json_str, true);

