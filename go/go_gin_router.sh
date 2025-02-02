# 1. 分组
url := r.Group("/url")
{
	url.GET("/add", func(ctx *gin.Context){
		ctx.String(http.StatusOK, "url add") 
	})
}

