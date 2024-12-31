# 1. 编辑文件 ThinkPHP/Library/Think/Db/Driver.class.php

# 2. 新增方法
public function logsql($sql, $start_time){
    $log['sql'] = $sql;
    $log['sp_time'] = nowms() - $start_time;
    $log['log_user'] = defined('LOG_USER') ? LOG_USER: '';
    $log['method'] = INTERFACE_NAME;
    logs(returnJson($log), 'sql');
}

