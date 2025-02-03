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
# 对应main.go的demo
import(
	"目录名称/router"
)
func main(){
	r := router.Router()
	r.Run(":9999")
}

