# 1. 查看列表数据
db.getCollection('表名').find({})

# 2. 查看总数
db.getCollection('表名').find({}).count()

# 3. 查询一条数据
db.getCollection('表名').findOne()

# 4. 插入一条数据
db.表名.insertOne({
  name: "小明",
  age: 22
})

# 5. 显示所有数据库
show dbs

# 6. 切换至指定数据库, 不存在则创建
use <数据库名>

# 7. 显示当前数据库中的所有集合
show collections

# 8. 查询集合中的所有文档
db.<集合名>.find()

# 8. 带条件查询, 例如 db.users.find({age: 25})
db.<集合名>.find({<字段名>: <值>})

# 9. 限制返回结果数量
db.<集合名>.find().limit(数量)

# 10. 排序(1为升序, -1为降序)
db.<集合名>.find().sort({<字段名>: 1或-1})	

# 11. 插入单个文档
db.<集合名>.insertOne({<文档>})

# 12. 更新匹配的第一个文档

