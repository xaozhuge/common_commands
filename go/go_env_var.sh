# 1. GOPROXY 是 Go 用于指定模块代理的环境变量, 模块代理是一个缓存和代理 Go 模块的服务, 可以加速模块的下载和解决网络访问问题
# 1.1 默认值
https://proxy.golang.org,direct

# 1.2 Go 工具将首先尝试从 https://goproxy.cn 下载模块, 如果无法访问, 将直接从模块源仓库下载
go env -w GOPROXY=https://goproxy.cn,direct
