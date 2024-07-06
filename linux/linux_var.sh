# 1. 命令替换，执行`pwd`命令，并将其输出结果赋值给变量var。更推荐使用$(...),因为它更容易阅读和嵌套
var=$(pwd)
var=`pwd`

# 2. 反引号 `command` 用于执行 command 并将其输出作为字符串返回

# 3. eval 是一个内建的 shell 命令, 用于将传递给它的字符串作为 shell 命令来执行

# 4. 数组,数组下的内容
array=($(ls))
# 4.1 输出数组的第一个元素
echo ${array[0]}
# 4.2 输出数组的全部元素
echo ${array[*]}
echo ${array[@]}

