# 1. 免密配置
ssh-copy-id -i ~/.ssh/id_rsa.pub 用户名@IP

# 2. ssh -p 指定端口（默认端口为22 可以忽略）
ssh -p 端口 root@192.168.1.1

# 3. ssh 远程执行命令
ssh root@192.168.1.1 "cd /alidata/www;ls"



