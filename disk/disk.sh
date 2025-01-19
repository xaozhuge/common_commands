# 一、磁盘空间满
# 1. 查看具体的大文件
du -sh *|sort -h
# 2. 查看被删除，但是被锁的文件，导致磁盘空间没有释放
lsof | grep deleted
# 根据查询到的 pid, 查看哪个程序被锁
ps aux|grep pid

