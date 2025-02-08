# 1. 脚本中首先引入文件, 表明使用的是哪一个shell
#!/usr/bin/expect

# 2. 设置会话超时时间为30s, 若不限制超时时间则应设置为-1
set timeout 30

# 3. spawn 后面跟一个命令, 开启一个会话
spawn ssh root@127.0.0.1

# 4. expect 接收命令执行后的输出, 然后和期望字符串匹配, 若对应这执行相应的send来发送交互信息
expect "*password:"
send "密码\r"

# 5. expect eof 和 interact
# expect eof: 等待执行结束, 若没有这一句, 可能导致命令还没执行, 脚本就结束了 

