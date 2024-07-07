# 1. where语句设置
->where('id', 1)
->where('id',[1, 2])
->where('name', '!=', 'test')

# 2. first() 方法返回的是一个对象(Eloquent 模型或 stdClass 对象)
->first()

# 3. 将(Eloquent 模型或 stdClass 对象)转化为数组
->toArray()

# 4. pluck 方法将获取匹配条件的所有记录中id字段的值, 并以数组的形式返回
->pluck('id')->toArray()

