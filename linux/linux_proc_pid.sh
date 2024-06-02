# 1. /proc文件系统提供了关于系统进程的信息

# 2. 对于每个进程, 都会在/proc文件系统下创建一个对应的目录, 以进程的PID(进程ID)命名

# 3. /proc/[pid]/exe 符号链接, 指向进程的可执行文件路径
ls -al /proc/31500/exe
readlink /proc/31500/exe
