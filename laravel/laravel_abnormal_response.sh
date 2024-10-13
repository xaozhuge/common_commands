# 1. 异常返回值记录log
app/Exceptions/Error.php

# 2. 根据状态码为非0
if($this->code != 0){
    $request = app('request');
    $log_data['ip'] = getip();
    $log_data['post'] = $request->all();
    $log_data['method'] = $request->route()->uri();
    loga(returnJson([$result, $log_data]), "message");
}

