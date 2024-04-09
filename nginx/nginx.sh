# 1. 查询 nginx 日志的时间和接口
now=`date "+%Y-%m-%d"`
cat $now.log|awk '{print $2, $8}'|awk -F '##' '{print $2, $3}'

# 2. 查询 nginx 日志的时间大于3秒
cat 2024-02-29.log|awk '{print $2, $8}'|awk -F '##' '$2 >= 3'

# 3. nginx重启
sudo nginx -s reload