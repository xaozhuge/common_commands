# 1. 脚本中首先引入文件, 表明使用的是哪一个shell
#!/usr/bin/expect

# 2. 设置会话超时时间为30s, 若不限制超时时间则应设置为-1
set timeout 30

# 3. spawn 后面跟一个命令, 开启一个会话
spawn ssh root@127.0.0.1

