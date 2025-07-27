# 1. 用于将主机中的文件复制到镜像内的指定路径
# 例如将代码拷贝到镜像内
# COPY: Dockerfile 指令, 用于 复制文件或目录 到镜像中
# .   : 源路径, 表示 当前构建上下文目录(即 `docker build` 命令所在的目录), 也就是docker容器外的路径
# /home/work/${APP_NAME}/: 目标路径, 镜像内部的路径, 可以包含环境变量 `${APP_NAME}`
COPY . /home/work/${APP_NAME}/

