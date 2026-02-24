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
  # 限制使用 1.5 个 CPU 核心
  --cpus=1.5 \           
  # 限制物理内存为 512MB
  -m 512m \              
  # 限制总内存（含 Swap）为 1GB
  --memory-swap=1g \     
  nginx:latest

# 二、注意事项
# 1. 内存 Swap 规则
# 如果只设置 -m而不设置 --memory-swap, 默认 Swap 限制等于内存限制（即禁用 Swap）
# 如果设置 --memory-swap=-1，则表示不限制 Swap 使用

# 2. CPU 权重
# --cpu-shares是相对值，只有在多个容器竞争 CPU 时才生效。如果系统空闲，低权重的容器也能使用全部 CPU。

# 3. 查看限制
# 启动后可以使用 docker stats命令实时查看容器的资源使用情况。

