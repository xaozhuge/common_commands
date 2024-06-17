# 1. 免密配置
ssh-copy-id -i ~/.ssh/id_rsa.pub 用户名@IP

# 2. ssh -p 指定端口（默认端口为22 可以忽略）
ssh -p 端口 root@192.168.1.1

# 3. ssh 和 ssh -t 和 ssh -tt
# 3.1 ssh 用于基本的 SSH 连接和远程命令执行。
ssh user@hostname
ssh user@hostname "ls -l"
# 3.2 ssh -t 请求分配一个伪终端，适用于需要终端支持的单个命令或程序
ssh -t user@hostname "top"
# 3.3 ssh -tt 强制分配一个或多个伪终端，适用于需要严格终端环境的场景，如多级跳转或运行复杂交互脚本
ssh -tt user@hostname "sudo ./interactive_script.sh"



