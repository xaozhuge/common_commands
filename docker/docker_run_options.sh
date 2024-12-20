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


# 三. 网络配置选项
# 1. --network: 指定容器的网络模式, 例如 bridge、host、none 或用户自定义网络
docker run --network=bridge

# 2. -p(--publish): 将容器的端口映射到主机端口, 格式为主机端口:容器端口
docker run -p 8080:80

# 3. --expose: 显示声明容器暴露的端口(不映射到主机)
docker run --expose=80


# 四. 挂载和存储选项
# 1. -v(--volume): 挂载主机目录或数据卷到容器, 格式为 主机路径:容器路径
docker run -v /data:/app/data

# 2. --mount: 配置更灵活的挂载选项
docker run --mount type=bind,source=/data,target=/app/data

# 3. --tmpfs: 为容器挂载一个临时文件系统
docker run --tmpfs /app


# 五. 环境配置选项
# 1. -e(--env): 设置环境变量
docker run -e ENV_VAR=value

# 2. --env-file: 从文件中加载环境变量
docker run --env-file ./env.list

