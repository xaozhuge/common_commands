# 1. router的demo
import(
	"目录名称/controllers"
)
func Router() *gin.Engine{
	r := gin.Default()
	url := r.Group("/url")
	{
		url.GET("/info", controllers.GetUrlInfo)
	}
	return r
}
# controllers 下的 GetUrlInfo
func GetUrlInfo(c *gin.Context){
	ReturnSuccess(c, 0, "success", "url info", 1)
}

