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

