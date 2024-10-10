<?php

// 运行命令
// php ~/ops_code/common_commands/php/php_log.php

$id="";

$map = array(

);

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
        $method = $row['method'];
        $post = json_decode($row['post'], true);
        $url = $map[$source]. $method;
        $param_str=http_build_query($post);
        break;
    }

} catch (PDOException $e) {
    echo "1. 数据库连接失败: " . $e->getMessage();
}


$cmd=<<<EOF
export https_proxy=http://127.0.0.1:8888;curl -s -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "$param_str" $url ;
EOF;
echo $cmd;

@exec($cmd);
echo PHP_EOL;
// 关闭连接
$conn = null;

?>
