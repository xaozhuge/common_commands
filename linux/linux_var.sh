# 1. 命令替换，执行`pwd`命令，并将其输出结果赋值给变量var。更推荐使用$(...),因为它更容易阅读和嵌套
# $(...) 这是命令替换语法, 表示将 $(...) 内部命令的输出结果作为字符串替换
var=$(pwd)
var=`pwd`

# 2. 反引号 `command` 用于执行 command 并将其输出作为字符串返回

# 3. eval 是一个内建的 shell 命令, 用于将传递给它的字符串作为 shell 命令来执行

# 4. 数组,数组下的内容, 数组赋值,使用小括号(...)创建一个数组
array=($(ls))
# 4.1 输出数组的第一个元素
echo ${array[0]}
# 4.2 输出数组的全部元素
echo ${array[*]}
echo ${array[@]}

# 5. 参数替换
# 5.1 表示将变量 var 中所有匹配 pattern 的部分替换为 replacement
${var//pattern/replacement}
# 5.2 用于将字符串 info 中的每个竖线字符 "|" 替换为空格字符" "
${info//|/ }

# 6. <<< 是 Here String 特性, 它将命令替换的输出结果作为 read 命令的标准输入
# 6.1 先将res变量的内容通过echo输出, 然后通过awk命令提取出第5和第6列的内容
# 6.2 read 命令从标准输入读取内容, 并按空格分隔将值赋给变量 user 和 time
read user time <<< $(echo $res | awk '{print $5, $6}')
