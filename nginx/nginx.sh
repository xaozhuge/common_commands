# 1. 查询 nginx 日志的时间和接口
now=`date "+%Y-%m-%d"`
cat $now.log|awk '{print $2, $8}'|awk -F '##' '{print $2, $3}'

# 2. 查询 nginx 日志的时间大于3秒
cat $now.log|awk '{print $2, $8}'|awk -F '##' '$2 >= 3'

# 3. nginx重启
sudo nginx -s reload
# 容器内的nginx语法检查
docker exec nginx122_c nginx -t
# 容器内的nginx重新加载
docker exec nginx122_c nginx -s reload

# 4. nginx在容器内还是容器外的区别
# 容器外: 如果是微服务的代理, 最好在容器外, 因为有很多的端口
# 如果在容器内, 就需要写很多的端口映射

