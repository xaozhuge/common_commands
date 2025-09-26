# 1. 检测端口是否开放
timeout 1 nc -vz IP 端口

# demo
timeout 1 nc -vz 172.16.169 21
echo $?

