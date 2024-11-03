# 1. 返回当前毫秒
function nowms() {
    list($t1, $t2) = explode(' ', microtime());
    return (float)sprintf('%.0f',(floatval($t1)+floatval($t2))*1000);
}

# 2. 返回json
function returnJson($list){
    return json_encode($list, JSON_UNESCAPED_UNICODE);
}

# 3. thinkphp打印日志
function pr($data, $save_name = ''){
    $root      = dirname($_SERVER['SCRIPT_FILENAME']);
    $path      = $_SERVER['PATH_INFO'];
    $save_name = dv($save_name, getpath());
    $file_name = $root. '/Application/Runtime/Logs/Home/'. $save_name;
    $content   = print_r($data, true);
    file_put_contents($file_name,date('Y-m-d H:i:s'). "\n". $content. "\n",FILE_APPEND);
}

