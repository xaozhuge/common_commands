# 1. -l 选项表示每次读取固定数量的行数, 然后将这些行作为参数传递给命令, 默认情况下，它是逐行处理输入数据的

# 2. -l2 -l后面的数字2指定了每次传递给命令的输入行数, 在这个例子中，xargs每次会读取两行输入, 将这两行数据作为参数传递给指定的命令
# 每2行合并为1行
xargs -l2

# 3. xargs 是给其他命令传递参数

