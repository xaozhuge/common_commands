FROM golang:1.21-alpine AS builder
# 1. 上述命令是 Dockerfile 中的一条指令(基础镜像声明 + 多阶段构建命名)
# 指定基础镜像
# 使用 Go 1.21 + Alpine Linux, 给这个构建阶段命名为 `builder` 
# 后续使用 `--from=builder`, 可以从这个构建阶段拷贝文件到其他阶段

