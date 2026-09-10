# 1. -c = command, 告诉 sh, 不从标准输入读脚本，直接把后面的字符串当作 shell 命令来执行
sh -c '这里写一整条shell命令'

# 2. sudo + sh -c 解决重定向权限(高频实战)
# 普通用户想往 `/etc/hosts` 追加一行, 下面错误：
# 由当前用户shell打开文件, 权限不足 Permission denied
# 原因: `>` 重定向是由 当前普通用户 shell 处理, 不是 sudo
# sudo 只作用于`echo`, 打开文件写权限依旧是普通用户, 会权限拒绝
sudo echo "127.0.0.1 test.local" >> /etc/hosts

# 3. 整条命令包括 `>>` 在 root 的 sh 里面运行
# 就要用 `sudo sh -c '命令包含重定向'`
# 此时整个字符串交给 root 的 sh 进程执行, 重定向`>`也运行在 root 权限下

