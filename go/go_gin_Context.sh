# 1. 是一个指向Gin框架中Context结构体的指针. 
# 包含了关于HTTP请求的所有信息, 并提供了用于构建HTTP响应的方法
c *gin.Context

# 2. 获取上下文中存储的值
c.Get(key string)(value interface{}, exists bool)

