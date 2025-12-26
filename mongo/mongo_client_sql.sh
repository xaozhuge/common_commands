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

