# 1. 接收参数并设置默认值
# 推荐,支持JSON、POST、GET
$page = $request->input('page', 1);

# 不支持JSON
$page = $request->get('page', 1);

