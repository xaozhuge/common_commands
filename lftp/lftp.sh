# 1. lftp 是一个用于文件传输的命令行工具, 支持多种协议(包括 FTP、SFTP、HTTP等)
lftp [OPTS] <site>

# 2.1 -u 选项使用指定的用户名和密码进行身份验证
# 2.2 sftp://${IP}:${PORT} 指定使用SFTP协议连接到远程服务器的IP地址和端口
# 2.3 在 <<EOF 和 EOF 之间的所有命令都将被传递给 lftp 执行
lftp -u ${USER},${PASSWORD} sftp://${IP}:${PORT}<<EOF
get $tm_sales
by
EOF

# 3. lcd 命令是lftp的内部命令, 用于在本地更改当前工作目录(Local Change Directory)
lcd ${srcdir}

# 4. get 命令是lftp的内部命令, 用于从远程服务器下载文件
get $base_info

# 5. by(或bye)是lftp的内部命令, 用于断开与远程服务器的连接并退出lftp
by
