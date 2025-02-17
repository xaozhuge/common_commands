# 1. GET的参数, 例如
http://127.0.0.1:9999/url/info/id/name
http://127.0.0.1:9999/url/info/10010/zzz
# router的demo
url.GET("/info/:id/:name", controllers.UrlController{}.GetUrlInfo)

# Controller
func (u UrlController) GetUrlInfo(c *gin.Context){
	id := c.Param("id")
	name := c.Param("name")
	ReturnSuccess(c, 0, name, id, 1)
}

# 2. POST的参数, Content-Type: application/x-www-form-urlencoded
# router的demo
url.POST("/info", controllers.UrlController{}.GetUrlInfo)

# Controller
func (u UrlController) GetUrlInfo(c *gin.Context){
	id := c.PostForm("id")
	name := c.DefaultPostForm("name", "hahaha")
	ReturnSuccess(c, 0, name, id, 1)
}

