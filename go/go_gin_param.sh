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

# 3. POST的参数, Content-Type: application/json
# router的demo
url.POST("/info", controllers.UrlController{}.GetUrlInfo)

# Controller Map的形式
func (u UrlController) GetUrlInfo(c *gin.Context){
	param := make(map[string]interface{})
	err := c.BindJSON(&param)
	if err == nil {
		ReturnSuccess(c, 0, "success", param, 1)
		return
	}
	ReturnError(c, 1, gin.H{"err": err})
}

# 返回值的处理
ReturnSuccess(c, 0, "success", param, 1)
ReturnSuccess(c, 0, param["name"], param["id"], 1)

# 4. POST的参数, Content-Type: application/json
# Controller 结构体的形式
type Urlparam struct{
	Name string `json:"name"`
	Id int `json:"id"`
}

