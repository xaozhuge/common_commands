# 1. go env 是 Go 命令行工具用于查看和设置 Go 环境变量的命令
go env

# 2. 获取env变量的值
go env GO111MODULE
go env GOPROXY

# 3. 写入环境变量配置
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct

