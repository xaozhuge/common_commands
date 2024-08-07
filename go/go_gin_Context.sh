# 1. 是一个指向Gin框架中Context结构体的指针. 
# 包含了关于HTTP请求的所有信息, 并提供了用于构建HTTP响应的方法
c *gin.Context

# 2. 获取上下文中存储的值
c.Get(key string)(value interface{}, exists bool)

# 3. 获取POST表单参数
c.PostForm(key string)

# 4. 设置HTTP状态码
c.Status(code int)

# 5. 发送JSON响应
c.JSON(code int, obj interface{})

# 6. 用于将请求体的数据绑定到指定结构体变量的方法
# 支持根据请求的Content-Type自动选择合适的绑定器(JSON、表单)
c.ShouldBind(&param)
Page int `json:"page" form:"page"`
