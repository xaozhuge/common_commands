# 1. Model中使用
try{
	# 代码块
}catch(\Exception $e){
    $log['code'] = $e->getCode();
    $log['message'] = $e->getMessage();
    logs(returnJson($log), '文件名');
    # 代码块
}

