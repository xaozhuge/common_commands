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

        
    } catch (PDOException $e) {
        echo "1. 数据库连接失败: " . $e->getMessage();
    }
    echo PHP_EOL;
    echo PHP_EOL;
    // 关闭连接
    $conn = null;
}

