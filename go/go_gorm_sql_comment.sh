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

