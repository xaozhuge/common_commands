# 1. 表示 OpenResty(基于 Nginx + LuaJIT) 里常见的日志输出写法
# 这行代码的作用是 当 Lua 脚本操作 MySQL 出错时, 把错误信息以 error级别 写进 Nginx 的 error.log 文件中
ngx.log(ngx.ERR, "new mysql error : " .. err)

# 2. ngx.log(level, ...): 这是 OpenResty 提供的 API, 用来往 Nginx 的 error.log 里写日志
# level 指日志级别, 可以是: 
# ngx.STDERR ngx.EMERG ngx.ALERT ngx.CRIT ngx.ERR
# ngx.WARN ngx.NOTICE ngx.INFO ngx.DEBUG
ngx.log(ngx.ERR, "new mysql error : " .. err)

