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
# 通过 CFS 调度器限制 CPU 时间配额(微秒)
--cpu-period=100000 
--cpu-quota=50000

# 二、内存资源限制: 内存限制主要通过 -m参数实现, 并可配合 --memory-swap控制交换空间
# 1. -m / --memory
# 限制容器可使用的最大物理内存
-m 512m

# 2. --memory-swap
# 限制内存 + 交换空间（Swap）的总量
--memory-swap=1g

# 3. --memory-reservation
# 设置内存软限制（系统紧张时的目标值）
--memory-reservation=256m

# 4. 综合配置示例
# 以下是一个同时限制 CPU 和内存的启动命令示例
docker run -d \
  --name my-container \

