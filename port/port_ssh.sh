# 1. 检测端口是否
ssh -p 端口 -o ConnectTimeout=1 root@IP

# 2. 如果端口未开放
ssh: connect to host 172.16.1.69 port 21: Operation timed out

# 3. 如果端口开放, 但是无服务
ssh: connect to host 172.16.1.169 port 80: Connection refused

