# 1. 查看列表数据
db.getCollection('表名').find({})

# 2. 查看总数
db.getCollection('表名').find({}).count()

# 3. 查询一条数据
db.getCollection('表名').findOne()

