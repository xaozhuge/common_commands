# 1. 分组
url := r.Group("/url")
{
	url.GET("/add", func(ctx *gin.Context){
		ctx.String(http.StatusOK, "url add") 
	})
}

# 2. router的demo
func Router() *gin.Engine{
	r := gin.Default()
	url := r.Group("/url")
	{
		url.GET("/add", func(ctx *gin.Context){
			ctx.String(http.StatusOK, "url add") 
		})
	}
	return r
}

