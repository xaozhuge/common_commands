# 1. 有时候 $time 生成 日志 失败
access_log /alidata/log/nginx/access/域名/$time.log;
# 反倒写固定的时候日志是正常的
access_log /alidata/log/nginx/access/域名/access.log;

