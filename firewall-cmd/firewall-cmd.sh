# 1. firewall-cmd 是 Linux上新的防火墙软件，类似 iptables

# 2. 查看开放的端口
firewall-cmd --list-ports

# 3. 开放通过tcp访问3306
firewall-cmd --add-port=3306/tcp

