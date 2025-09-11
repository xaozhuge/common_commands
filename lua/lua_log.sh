# 1. 表示 OpenResty(基于 Nginx + LuaJIT) 里常见的日志输出写法
# 这行代码的作用是 当 Lua 脚本操作 MySQL 出错时, 把错误信息以 error级别 写进 Nginx 的 error.log 文件中
ngx.log(ngx.ERR, "new mysql error : " .. err)

