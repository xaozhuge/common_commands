# 1. 这是在 Dockerfile 中设置环境变量的指令, 用于启用 Go 的模块支持(Go Modules)
ENV GO111MODULE=on


# 2. ENV: Dockerfile 指令, 用于设置环境变量. 该变量在镜像中后续所有层中都可用
ENV GO111MODULE=on

