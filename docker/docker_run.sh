# 1. 结合了创建和启动容器的操作, 用于创建并运行一个新的 Docker 容器
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
# 1.1 OPTIONS : 运行容器时的参数(可选)
# 1.2 IMAGE   : 要运行的 Docker 镜像
# 1.3 COMMAND : 容器启动时要运行的命令(可选)
# 1.4 ARG...  : 传递给命令的参数(可选)

# 2. OPTIONS
# 2.1 后台运行容器(-d):使用 -d 选项, 容器会在后台运行
docker run -d IMAGE
# 2.2 命名容器(--name):使用 --name 为容器指定一个名称
docker run --name CONTAINER_NAME IMAGE
# 2.3 绑定端口(-p):使用 -p 将主机端口映射到容器端口
docker run -p HOST_PORT:CONTAINER_PORT IMAGE
# 2.4 挂载卷(-v):使用 -v 将主机目录挂载到容器目录
docker run -v HOST_DIR:CONTAINER_DIR IMAGE
