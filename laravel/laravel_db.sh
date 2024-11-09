# 1. where语句设置
->where('id', 1)
->where('name', '!=', 'test')
->whereIn('id',[1, 2])

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

# 9. query() 是用于手动获取查询构造器实例
# 调用 where() 时, Laravel 会自动创建一个查询构造器实例, 因此你不需要显式地调用 query() 方法
Model::query()->where('id', $id)->value('name');
Model::where('id', $id)->value('name');

# 10. value() 方法会从查询结果中获取指定字段的值
# value() 只返回匹配条件的第一条记录的指定字段的值. 如果没有匹配的记录, 返回 null
->value('name')

# 11. 按照字段排序
->orderBy('name', 'desc')
# orderByRaw 适用于复杂的排序逻辑(如函数、表达式)
->orderByRaw('name desc')

# 12. paginate($num) 是 Laravel 的分页方法, 它将查询的结果分页. $num 是每页的记录数量
# 包含分页相关信息(如当前页、总页数、每页显示数量、总条数等) 以及 查询到的数据
->paginate($num)

# 13. 如果 test 方法依赖于模型的具体实例(例如访问或修改实例属性, 例如方法里使用$this)
$list = (new TestModel())->test($id_list);

# 14. select() 用于指定要查询的列. 可以选择特定的列来返回, 而不是默认查询所有列
# $field 是一个包含列名的数组
$field = ["id as newid","title"];
->select($field)
# 适用于复杂 SQL 操作的场景, 如使用数据库函数、聚合操作等
->selectRaw($field)

# 15. get() 方法执行查询, 并获取查询结果集. 
# 它返回的是一个 Eloquent 集合对象(Collection), 其中包含所有符合条件的记录
# 这一步实际上执行了数据库查询, 并获取所有满足条件的记录。
->get()

# 16. 返回二维数组
# 无数据时不影响
$list = Model::query()->limit(2)->get()->toArray();
# 无数据时不影响
$list = (new Model())->limit(2)->get()->toArray();
# 无数据时不影响
$list = App::make(Model::class)->limit(2)->get()->toArray();
# 无数据时不影响
$list = DB::table('表名')->limit(2)->get()->map(function ($item) {
    return (array) $item;
})->toArray();

# 17. 返回一维数组
# first为空时会报错
$info_obj = Model::query()->where('id', 1)->first();
if($info_obj){
	$info_arr = $info_obj->toArray();
}else{
	$info_arr = [];
}

# first为空时会报错
$info_obj = (new Model())->where('id', 1)->first();
if($info_obj){
	$info_arr = $info_obj->toArray();
}else{
	$info_arr = [];
}

# first为空时会报错
$info_obj = App::make(Model::class)->where('id', 1)->first();
if($info_obj){
	$info_arr = $info_obj->toArray();
}else{
	$info_arr = [];
}

# first为空时会报错
$info_obj = DB::table('表名')->where('id', 1)->first();
if($info_obj){
	$info_arr = $info_obj->toArray();
}else{
	$info_arr = [];
}
# 或者
$info_arr = (array)$info_obj;

# 18. 调用方法
# 正确用法
Model::test();
# 正确用法
(new Model())->test();
# 正确用法
App::make(Model::class)->test();
# 错误用法
Model::query()->test();
# 错误用法
DB::table('表名')->test();

