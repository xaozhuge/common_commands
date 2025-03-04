# if 是 awk 中用于条件判断的关键字, 它的语法类似于大多数编程语言
awk '{if (condition) { action } else { action } }'
awk '{ if ($3 == "=>") {print $2" "$3" "$4} else {print $1" "$2" "$3}}'

