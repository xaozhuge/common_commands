# 1. go.mod 文件用于管理项目的依赖关系

# 2. module 声明指定了当前模块的路径,这通常是你的项目的根路径,相当于命名空间,模块路径应该是唯一的,通常使用完整的域名来避免冲突
module mymodule.com/project

# 3. go 语句指定使用的 Go 版本. 这个版本通常是你用来开发和测试模块的 Go 版本
go 1.21.0

# 4. require 语句列出了模块的依赖项及其版本
require (
	github.com/gin-gonic/gin v1.9.1
)

# 5. indirect 表示这个依赖是间接依赖, 而不是直接依赖. 间接依赖是通过其他依赖引入的
require (
	github.com/google/uuid v1.6.0 // indirect
)

# 6. 常用命令
# 6.1 初始化新的模块, 创建 go.mod 文件
go mod init [module-path]
# 6.2 整理现有的 go.mod 文件, 添加缺失的模块, 删除不用的模块
go mod tidy
# 6.3 下载 go.mod 文件中指定的所有依赖
go mod download
# 6.4 将所有依赖复制到项目的 vendor 目录中. 根据 go.mod 文件中声明的依赖来创建一个 vendor 目录
go mod vendor
