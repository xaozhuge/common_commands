# 1. 检测端口是否开放
timeout 1 nc -vz IP 端口

# demo
timeout 1 nc -vz 172.16.169 21
echo $?

# 2. 如果端口未开放,124 表示超时触发, timeout 强制终止 nc	
124

