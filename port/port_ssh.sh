# 1. 检测端口是否开放
ssh -p 端口 -o ConnectTimeout=1 root@IP

# demo
ssh -p 21 -o ConnectTimeout=1 root@172.16.169

# 2. 如果端口未开放
ssh: connect to host 172.16.1.69 port 21: Operation timed out

# 3. 如果端口开放, 但是无服务
ssh: connect to host 172.16.1.169 port 80: Connection refused

# 4. 如果端口开放, 但是有服务
Connection closed by 172.16.1.169 port 80

