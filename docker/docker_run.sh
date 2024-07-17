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
# 2.5 交互式终端(-it):使用 -it 选项,可以与容器进行交互(通常用于调试或进入容器内部)
docker run -it IMAGE
# 2.6 自动删除(--rm):使用 --rm 选项, 容器停止后会自动删除
docker run --rm IMAGE
# 2.7 环境变量(-e):使用 -e 传递环境变量到容器
docker run -e ENV_VAR_NAME=value IMAGE
# 2.8 指定工作目录(-w):使用 -w 指定容器内的工作目录
docker run -w /path/to/workdir IMAGE

# 3. 拉取并运行一个 Ubuntu 容器, 启动一个交互式终端会话, 运行/bin/sh shell
docker run -it ubuntu /bin/sh

# 4. 指定具体的命令(如/bin/sh)可以覆盖镜像的默认命令, 提供更多的灵活性和控制. 假如 Dockerfile 内容如下
FROM ubuntu:latest
CMD ["echo", "Hello, World!"]
# 4.1 docker run -it ubuntu : 运行后会输出 Hello, World!, 然后容器退出
# 4.2 docker run -it ubuntu /bin/sh : 运行后会启动 /bin/sh shell, 进入交互模式, 你可以在容器内执行命令

