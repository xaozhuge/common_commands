<?php

// 运行命令
// php ~/ops_code/common_commands/php/php_log_l.php

$req=<<<EOF
[2025-01-16 17:26:07] prod.INFO: {"method":"POST","url":"https:\/\/  
EOF;

$info = explode('prod.INFO: ', $req);
$post = $info[1];
$post = json_decode($post, true);
$url =  $post['url'];
$param =  $post['param'];
$header = json_decode($post['req_header'], true);
$content_type = $header['content-type'][0];
$authorization = $header['authorization'][0];


?>
