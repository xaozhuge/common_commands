# 1. Unix本地套接字, 也被称为Unix域套接字, 是一种在Unix/Linux系统上用于进程间通信(IPC)的机制

# 2. 与传输层套接字(TCP/IP套接字或者网络层套接字)不同, Unix本地套接字不通过网络进行通信, 而是在同一台机器上的进程之间传递数据

# 3. Unix本地套接字基于文件系统, 它们以文件的形式存在于文件系统中, 并且可以像文件一样被打开、读取和写入

# 4. 当一个进程想要向另一个进程发送数据时, 它只需要将数据写入套接字文件即可. 接收进程则从套接字文件中读取数据

# 5. PHP-FPM可以通过两种主要方式与Web服务器(如Nginx)通信：Unix套接字和TCP/IP套接字
# 5.1 Unix套接字   listen = /run/php-fpm/www.sock
# 5.2 TCP/IP套接字 listen = 127.0.0.1:9000

# 6. 查看mysql的套接字
lsof -U | grep mysql
lsof /tmp/mysql.sock

