<?php

// 运行命令
// php ~/ops_code/common_commands/php/php_simulate_curl.php

// 日志配置
$id="";

// 域名配置
$map = array(
    
);

// DB配置
$servername="";
$port=;
$dbname="";
$username="";
$password="";
$sql="";



try {
    $dsn = "mysql:host=$servername;port=$port;dbname=$dbname";
    $options = array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    );

    // 创建 PDO 实例
    $conn = new PDO($dsn, $username, $password, $options);

    // 执行 SQL 查询
    $stmt = $conn->query($sql);

    // 输出数据
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $source = $row['source'];
        $post = "";
        $url  = "";
        $param_str = "";
        break;
    }

} catch (PDOException $e) {
    echo "1. 数据库连接失败: " . $e->getMessage();
}




?>
