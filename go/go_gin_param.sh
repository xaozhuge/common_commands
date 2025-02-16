# 1. GET的参数, 例如
http://127.0.0.1:9999/url/info/id/name
http://127.0.0.1:9999/url/info/10010/zzz
# router的demo
url.GET("/info/:id/:name", controllers.UrlController{}.GetUrlInfo)

