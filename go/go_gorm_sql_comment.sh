# 旧代码
func GetDB() *gorm.DB {
	return db
}

# 新代码
func GetDB() *gorm.DB {
	return db.Where("/* from:auth_api */ 2 > 1")
}
# 这是一个给 SQL 打标签、并保持可继续追加条件的安全写法, 查询结果不变, 但日志和可维护性更好

# 1. /* from:auth_api */ 说明
# 这是一个 SQL 注释, 不会影响 SQL 的逻辑执行, 只是方便在数据库日志、慢查询分析或审计中看到这个请求的来源
# 例如, 执行 SQL 时你能在最终生成的语句里看到这个注释, 从而追踪这个 SQL 是由 auth_api 模块发起的

# 2 > 1 说明
# 这是一个恒真条件(永远为真), 对查询结果没有过滤作用
# 加它的原因通常是为了让 GORM 在生成 SQL 时必然包含 WHERE 子句, 这样可以安全地在链式调用中继续追加 .Where(...), 不会担心拼接问题

# 3. 效果
# 之前的 GetDB() 直接返回 db(全局的 gorm.DB 实例)
# 改之后的 GetDB() 返回的对象带着一个 "永真 WHERE 条件 + 标记注释"
# 后续即使调用 .Where(...), GORM 会用 AND 拼接, 而不会覆盖掉已有条件, 也不会出现没有 WHERE 的情况

