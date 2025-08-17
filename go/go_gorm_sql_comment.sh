# 旧代码
func GetDB() *gorm.DB {
	return db
}

# 新代码
func GetDB() *gorm.DB {
	return db.Where("/* from:auth_api */ 2 > 1")
}
# 这是一个给 SQL 打标签、并保持可继续追加条件的安全写法, 查询结果不变, 但日志和可维护性更好

