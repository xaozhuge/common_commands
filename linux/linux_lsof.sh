# 1. lsof 用于显示系统中所有打开的文件, 文件可以是常规文件、目录、网络套接字、设备文件等, 在Unix和Linux系统中, 几乎所有的东西都被视为文件

# 2. -U 选项用于列出所有Unix域套接字, 文件类型是unix
lsof -U
# 2.1 查看php-fpm进程使用的Unix套接字
lsof -U | grep php-fpm
# 2.2 查看特定套接字文件的使用情况
lsof /run/php/php7.4-fpm.sock

# 3. -u 选项用于列出由特定用户(www)打开的所有文件
lsof -u www

# 4. -i 选项用于列出所有网络接口相关的文件(网络套接字), 文件类型是IPv4或IPv6
# 4.1 包括TCP套接字和UDP套接字,以及其他与网络连接相关的文件
lsof -i
# 4.2 查看所有TCP连接,查看所有UDP连接
lsof -i tcp
lsof -i udp
# 4.3 查看特定端口的网络连接
lsof -i :80
