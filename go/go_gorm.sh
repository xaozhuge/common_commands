# 1. gorm.DB 是 GORM 库中定义的一个结构体, 包含了用于处理数据库操作的方法和属性
# db 是 *gorm.DB 类型的一个变量, 表示 gorm.DB 结构体的一个实例
db *gorm.DB

# 2. 告诉ORM, 后续的操作是针对User模型对应的数据库表
db.Model(&User{})

# 3. 从数据库中查询指定表的第一条记录, 并将结果存储在varname中, varname通常是一个结构体类型
db.First(&varname)

