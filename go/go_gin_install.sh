# 1. gin 安装
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
go mod init 目录
go get -u github.com/gin-gonic/gin

# 2. -u说明: 已存在相关的代码包, 强行更新代码包及其依赖包

# 3. 镜像地址
# 阿里云: https://mirrors.aliyum.com/goproxy
# 微软: https://goproxy.io
# 七牛云: https://goproxy.cn

# 4. demo
```
package main

import(
	"net/http"
)


```

