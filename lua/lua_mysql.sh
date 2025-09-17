# local: 关键字, 用于在 Lua 中声明局部变量. 表示 mysql 只在当前作用域中可用, 避免污染全局命名空间
# require("resty.mysql"): 用于加载 resty.mysql 模块
local mysql = require("resty.mysql")

# 创建 MySQL 连接
local db, err = mysql:new()

# if not db then : 检查变量 db 是否存在或是否为真值
if not db then
    ngx.log(ngx.ERR,"new mysql error : " .. err)
    return
end

# 设置连接超时(毫秒)
db:set_timeout(1000)

# Lua语言中定义的一个表(table), 用于存储数据库连接的相关配置属性
# 在 Lua 中, 表(table)是唯一的数据结构, 用于表示数组、字典(哈希表)、对象等多种数据结构
local props = {
    host = "",
    port = 3306,
    database = "",
    user = "",
    password = "",
    charset = "utf8mb4"
}

