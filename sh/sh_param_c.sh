# 1. -c = command, 告诉 sh, 不从标准输入读脚本，直接把后面的字符串当作 shell 命令来执行
sh -c '这里写一整条shell命令'

# 2. sudo + sh -c 解决重定向权限(高频实战)
# 普通用户想往 `/etc/hosts` 追加一行, 下面错误：
# 由当前用户shell打开文件, 权限不足 Permission denied

