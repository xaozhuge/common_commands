FROM golang:1.21-alpine AS builder
# 1. 上述命令是 Dockerfile 中的一条指令(基础镜像声明 + 多阶段构建命名)
# 指定基础镜像
# 使用 Go 1.21 + Alpine Linux, 给这个构建阶段命名为 `builder` 
# 后续使用 `--from=builder`, 可以从这个构建阶段拷贝文件到其他阶段

FROM golang:1.21-alpine
# 2. 上述命令表示使用[Docker Hub上的官方Golang镜像]

golang:1.21-alpine
# 3. 镜像基于`Alpine Linux`(一个非常轻量的 Linux 发行版, 适合精简镜像)
Alpine 通常意味着:
	a. 镜像更小(通常<100MB）
	b. 启动快


AS builder
# 4. 这是多阶段构建的命名方式, 定义了一个叫`builder`的构建阶段

COPY --from=builder /app/main /app/main
# 5. 作用
# 把构建操作与最终镜像分离
# 最终产物(例如编译好的二进制)才会进入生产镜像
# 构建环境(go工具链、源码、依赖)不会被带入最终镜像
# 极大减小镜像体积

