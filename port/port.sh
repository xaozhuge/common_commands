# 1. 查看开启的端口
sudo lsof -i -n -P|grep LISTEN

# 2. 源端口监控
tcpdump -vvv >> temp.log

# 3. 编辑配置文件 ~/.bashrc

