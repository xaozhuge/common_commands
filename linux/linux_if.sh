# 1. 判断变量 "CONTRAINERID" 是否为空
if [ -n "${CONTRAINERID}" ]; then
  sudo docker rm -f ${CONTRAINERID}
fi

# 2. 判断前置命令是否不等于0
if [ $? -ne 0 ]; then
  echo "有问题，构建失败"
  exit 1
fi

# 3. 判断前置命令是否等于0
[ $? -eq 0 ] && echo "success" || echo "fail"

# 4. 判断文件是否存在且是否可执行
if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

# 5. 判断指定路径是否存在且为普通文件, 普通文件: 不是目录、设备文件或其他特殊文件的文件
if [ ! -f $file ];then
# 5.1 [ 是 test 命令的另一种形式, 用于进行条件测试
# 5.2 [ 和 ] 之间的空格是必要的, 因为 [ 实际上是 test 命令的别名

# 6. [ ... ] 和 [[ ... ]] 的区别
if [ $date -eq "" ]   # 不推荐
# 6.1 如果$date变量为空或未定义, [ $date -eq "" ] 会变成 [ -eq "" ] ,这是无效的表达式, 并且Bash会报告语法错误
if [[ $date -eq "" ]] # 推荐
# 6.2 [[ ... ]] 是Bash提供的扩展条件测试语法,比 [ ... ] 提供了更多的功能和更好的错误处理
# 它支持更多的运算符, 并且对空变量和特殊字符的处理更为宽容
