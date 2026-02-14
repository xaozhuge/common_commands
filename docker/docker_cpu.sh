# 一、 在 Docker 启动容器时, 可以通过 docker run 命令的参数来限制 CPU 和内存等资源
# 1. --cpus: 限制容器可使用的 CPU 核心数(支持小数)
eg: --cpus=1.5

# 2. --cpu-shares
# 设置 CPU 权重(相对值, 默认 1024) 仅在 CPU 资源紧张时按比例分配
--cpu-shares=512

# 3. --cpuset-cpus
# 绑定容器到指定的 CPU 核心(CPU 亲和性)
--cpuset-cpus="0,1"

# 4. --cpu-period / --cpu-quota

