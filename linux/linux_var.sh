# 1. 命令替换，执行`pwd`命令，并将其输出结果赋值给变量var。更推荐使用$(...),因为它更容易阅读和嵌套
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
