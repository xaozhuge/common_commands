<?php
$domain_list = array(
    "二级域名1","二级域名2"
);
$ext = '一级域名';

$unhttps_list = $https_list = array();

foreach ($domain_list as $v) {
    $domain = $v. $ext;
    
    try{
        $cert_info = getCertInfo($domain);
    } catch (PDOException $e) {
        $cert_info = array();
    }

    if(!$cert_info){
        $unhttps_list[] = $domain;
    }else{
        //证书结束时间
        $ssl_expire_time = date('Y-m-d H:i:s', $cert_info['validTo_time_t']);
        $ssl_expire_date = date('Ymd', $cert_info['validTo_time_t']);
        $https_list[$ssl_expire_date][] = $domain;
    }
}

echo "不支持https:".PHP_EOL;
array_walk($unhttps_list, function(&$v) {
    echo $v.PHP_EOL;
});

    
