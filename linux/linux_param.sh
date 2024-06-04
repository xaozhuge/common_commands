# 1. 标准输入 通过管道|或重定向<将数据传递给标准输入, 常用于命令之间的数据传递和流式处理
sudo lsof -i -n -P|grep LISTEN

# 2. 命令行参数 在命令执行时直接指定的参数, 通常用于文件名、选项和其他直接影响命令行为的数据
git branch -D branch_name

# 3. git branch -D 期望其参数是命令行参数, 而不是从标准输入读取的内容, 错误案例
git branch|grep zzz|git branch -D
# xargs 能够从标准输入构建命令行参数, 并将其传递给其他命令, 正确案例
git branch |grep zzz|xargs git branch -D

# 4. xargs 的默认行为是将输入数据附加到命令的末尾, 下面命令等同
echo "file1 file2 file3" | xargs rm
rm file1 file2 file3
