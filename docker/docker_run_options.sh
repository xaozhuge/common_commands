# docker run 是Docker中用来启动容器的命令, 支持多种选项(options)来配置容器的行为
# options 可以控制容器的名称、网络、存储、环境等

# 一. 基本配置选项
# 1. --name: 指定容器名称
docker run --name mycontainer

# 2. -d(--detach): 后台运行容器并返回容器ID
docker run -d 

# 3. -i(--interactive): 保持容器的标准输入打开
docker run -i

# 4. -t(--tty): 为容器分配一个伪终端(常与 -i 一起使用)
docker run -it

# 5. --rm: 容器退出时自动删除容器
docker run --rm


# 二. 资源限制选项
# 1. --memory: 限制容器的内存使用量, 例如 512m 或 1g
docker run --memory=512m

# 2. --cpus: 限制容器使用的 CPU 数量
docker run --cpus=1.5

# 3. --cpu-shares: 设置 CPU 共享权重(相对优先级)
docker run --cpu-shares=1024

# 4. --memory-swap: 设置容器内存加交换空间的总限制
docker run --memory-swap=1g

