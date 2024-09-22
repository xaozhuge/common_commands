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

# 5. 多个where条件
->where('id', 1)->where('sex', "男")

# 6. 删除
->delete()

# 7. 数据表实例
use Illuminate\Support\Facades\DB;
DB::table('表名')->where()

# 8. 更新数据
->update($update_data)

