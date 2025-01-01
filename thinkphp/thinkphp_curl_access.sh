# 1. 打开文件, 包含 curl_exec() 的文件

# 2. 新增方法
public function logCurlAccess($url, $start_time){
    $end_time = nowms();
    $log['url'] = $url;
    $log['req_time'] = $end_time - $start_time;
    $log['log_user'] = defined('LOG_USER') ? LOG_USER: '';
    $log['method'] = INTERFACE_NAME;
    logs(returnJson($log), 'curl_access');
}

