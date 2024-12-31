# 1. 编辑文件 ThinkPHP/Library/Think/Db/Driver.class.php

# 2. 新增方法
public function logsql($sql, $start_time){
    $log['sql'] = $sql;
    $log['sp_time'] = nowms() - $start_time;
    $log['log_user'] = defined('LOG_USER') ? LOG_USER: '';
    $log['method'] = INTERFACE_NAME;
    logs(returnJson($log), 'sql');
}

# 3. 调用方式
$start_time = nowms();
$result =   $this->PDOStatement->execute();
$this->logsql($this->queryStr, $start_time);

