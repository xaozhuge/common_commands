# local: 关键字, 用于在 Lua 中声明局部变量. 表示 mysql 只在当前作用域中可用, 避免污染全局命名空间
# require("resty.mysql"): 用于加载 resty.mysql 模块
local mysql = require("resty.mysql")

