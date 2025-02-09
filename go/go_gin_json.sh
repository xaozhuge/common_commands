# 1. router的demo
import(
	"目录名称/controllers"
)
func Router() *gin.Engine{
	r := gin.Default()
	url := r.Group("/url")
	{
		url.GET("/info", controllers.GetUrlInfo)
		url.GET("/list", controllers.GetUrlList)
	}
	return r
}
# controllers 下的 GetUrlInfo
func GetUrlInfo(c *gin.Context){
	ReturnSuccess(c, 0, "success", "url info", 1)
}

func GetUrlList(c *gin.Context){
	ReturnError(c, 1, "fail")
}

# 2. 封装的 ReturnSuccess
type JsonStruct struct {
	Code int `json:"code"`
	Msg  interface{} `json:"msg"`
	Data interface{} `json:"data"`
	Count int64 `json:"count"`
}

type JsonErrStruct struct {
	Code int `json:"code"`
	Msg  interface{} `json:"msg"`
}

func ReturnSuccess(c *gin.Context, code int, msg interface{}, data interface{}, count int64){
	json := &JsonStruct{Code: code, Msg: msg, Data: data, Count: count}
	c.JSON(200, json)
}

func ReturnError(c *gin.Context, code int, msg interface{}){
	json := &JsonErrStruct{Code: code, Msg: msg}
	c.JSON(200, json)
}

