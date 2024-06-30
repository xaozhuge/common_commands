# 1. go get 命令用于从远程仓库获取并安装指定的包或模块, 下载并安装 Gin 框架
go get github.com/gin-gonic/gin
# 1.1 go get -u 会从远程仓库中获取包或模块，并同时更新其依赖项, 更新 Gin 框架及其所有依赖项到最新版本
go get -u github.com/gin-gonic/gin

# 2. go list 命令用于列出 Go 包的信息
go list
# 2.1 go list -m 列出模块的信息, 可以用来查看当前模块及其依赖模块的详细信息, 查看 Gin 模块的信息
go list -m github.com/gin-gonic/gin
# 2.2 查看当前项目及其所有依赖模块的信息
go list -m all
