# 1. 用于停止 Docker 的套接字激活服务
sudo systemctl stop docker.socket

# 2. 用于停止 ​Docker 服务(Docker 引擎)
sudo systemctl stop docker

# ​3. docker.socket 的作用 
# 是一个 Systemd 套接字单元, 监听 Docker 的 Unix 套接字 (/var/run/docker.sock). 
# 当客户端(如 docker 命令)尝试连接时, 会自动启动 docker.service
​
# 4. 现象分析​
# 即使你手动停止 docker.service, 只要 docker.socket 仍在运行, 后续任何调用 docker 命令的操作都会重新激活 Docker 服务

