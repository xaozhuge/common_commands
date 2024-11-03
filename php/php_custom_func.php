# 1. 返回当前毫秒
function nowms() {
    list($t1, $t2) = explode(' ', microtime());
    return (float)sprintf('%.0f',(floatval($t1)+floatval($t2))*1000);
}

# 2. 返回json
function returnJson($list){
    return json_encode($list, JSON_UNESCAPED_UNICODE);
}

