# 1. go.mod 文件用于管理项目的依赖关系

# 2. module 声明指定了当前模块的路径,这通常是你的项目的根路径,相当于命名空间,模块路径应该是唯一的,通常使用完整的域名来避免冲突
module mymodule.com/project

# 3. go 语句指定使用的 Go 版本. 这个版本通常是你用来开发和测试模块的 Go 版本
go 1.21.0

# 4. require 语句列出了模块的依赖项及其版本
require (
	github.com/gin-gonic/gin v1.9.1
)
