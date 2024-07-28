<?php

$db = array(
    ["数据库IP","数据库用户名称","数据库用户密码","数据库端口","数据库名称","SQL语句","数据库说明[数据库IP]"],
);

foreach ($db as $v) {
    list($servername, $username, $password, $port, $dbname, $sql, $content) = $v;
    checkdb($servername, $username, $password, $port, $dbname, $sql, $content);
}
