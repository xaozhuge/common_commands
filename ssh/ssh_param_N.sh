# 1. -N: 不执行远程命令. 只做端口转发(隧道), 不打开远程 shell, 登录后仅仅维持连接, 不会启动交互式终端
ssh -N

# 2. -N 常用搭配
# -f: 后台运行 ssh 进程(fork 到后台), 一般和 -N 一起用于端口转发

# -L: 本地端口转发

# -R: 远程端口转发

# -D: socks 代理动态转发

# 注意: 不加 -N, ssh 转发端口同时还会打开远程终端; 加上 -N 就只干转发, 不启动 shell

# 3. 本地端口转发 (-L + -N)
# 把本地 8080 端口流量转发到远端机器的 127.0.0.1:80
# 前台运行, 只做转发, 不打开远程shell
ssh -N -L 8080:127.0.0.1:80 user@remote-server
# 访问本机 127.0.0.1:8080 等价于访问远程机器的 80 端口
# 想要放到后台运行, 加 -f
ssh -fN -L 8080:127.0.0.1:80 user@remote-server

# 4. 远程端口转发 (-R + -N)
# 远程机器的 9000 端口, 转发回本机的 3306 (mysql)
ssh -N -R 9000:127.0.0.1:3306 user@remote-server
ssh -fN -R 9000:127.0.0.1:3306 user@remote-server
# 在 remote‑server 访问 127.0.0.1:9000 就等于访问你本机 3306

# 5. SOCKS5 动态代理(-D + -N)
# 本机 1080 端口开启 socks5 代理, 流量全部走远程机器网络
ssh -N -D 1080 user@remote-server
ssh -fN -D 1080 user@remote-server

# 6. 关闭后台 ssh -fN 进程
# -f放到后台后, 不会自动退出, 需要手动 kill
# 查找进程 并 kill pid
ps aux | grep ssh
kill 12345

# 7. 总结内容
# -N: No command, 不执行远程命令, 专用于端口隧道转发
# -f: fork 后台

