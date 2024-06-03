# 1. lsof 用于显示系统中所有打开的文件, 文件可以是常规文件、目录、网络套接字、设备文件等, 在Unix和Linux系统中, 几乎所有的东西都被视为文件

# 2. -U 选项用于列出所有Unix域套接字, 文件类型是unix
lsof -U
# 2.1 查看php-fpm进程使用的Unix套接字
lsof -U | grep php-fpm
# 2.2 查看特定套接字文件的使用情况
lsof /run/php/php7.4-fpm.sock
