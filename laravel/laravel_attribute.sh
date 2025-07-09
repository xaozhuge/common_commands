# 1. getAttribute 和 setAttribute 是 Eloquent 模型的访问器(Accessor)和修改器(Mutator)的魔术方法, 
# 用来对模型属性的获取和设置过程进行拦截与处理

# 2. 读取属性时会触发(如 $model->字段名)
get字段名Attribute()

# 3. 你设置属性时会触发(如 $model->字段名 = 'value')
set字段名Attribute()

