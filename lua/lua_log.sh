# 1. 表示 OpenResty(基于 Nginx + LuaJIT) 里常见的日志输出写法
ngx.log(ngx.ERR, "new mysql error : " .. err)

