# 1. 桥接网络是指 本地物理网卡 和 虚拟网卡 通过 VMnet0虚拟交换机 进行桥接, 
# 物理网卡和虚拟网卡在拓扑图上处于同等地位, 因此虚拟机和主机是平等的, 相当于一个网络中的两台计算机. 
# 设置虚拟机的IP和主机在同一网段时, 即可实现主机与虚拟机的通信
# 
# 2. 桥接模式作用 
# 2.1 对局域网其他pc提供服务(例如提供 ftp/ssh/http)
# 
# 3. 如果虚拟机需要上外网
# 3.1 配置虚拟机的路由地址(例如 192.168.1.1) 
# 3.2 配置虚拟机的dns服务器(例如 8.8.8.8)

