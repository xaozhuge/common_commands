<?php

$db = array(
    ["数据库IP","数据库用户名称","数据库用户密码","数据库端口","数据库名称","SQL语句","数据库说明[数据库IP]"],
);

foreach ($db as $v) {
    list($servername, $username, $password, $port, $dbname, $sql, $content) = $v;
    checkdb($servername, $username, $password, $port, $dbname, $sql, $content);
}

# 校验测试数据库
echo "所有检查结束". PHP_EOL;

function checkdb($servername, $username, $password, $port, $dbname, $sql, $content){
    echo $content.PHP_EOL;
    try {
        $dsn = "mysql:host=$servername;port=$port;dbname=$dbname";
        $options = array(
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        );

        // 创建 PDO 实例
        $conn = new PDO($dsn, $username, $password, $options);
        echo "1. 数据库连接成功".PHP_EOL;

        // 执行 SQL 查询
        $start_time = nowms();
        $stmt = $conn->query($sql);
        $end_time   = nowms();
        $use_time   = $end_time - $start_time;

        // 输出数据
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            echo "2. SQL执行结果: id: " . $row["id"]. " - Update: " . $row["update_time"]. PHP_EOL;
            break;
        }
        echo "3. SQL消耗时间:{$use_time}ms";
    } catch (PDOException $e) {
        echo "1. 数据库连接失败: " . $e->getMessage();
    }
    echo PHP_EOL;
    echo PHP_EOL;
    // 关闭连接
    $conn = null;
}
