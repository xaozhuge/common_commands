# 1. 满足源IP或者目的IP
ip.addr == 127.0.0.1

# 2. 筛选源IP	
ip.src == 192.168.1.1

# 3. 筛选目标IP	
ip.dst == 192.168.1.1

# 4. tcp 满足源端口或者目标端口
tcp.port == 61352

# 5. udp 满足源端口或者目标端口
udp.port == 61352

# 6. 筛选源端口是 10101
tcp.srcport == 10101 || udp.srcport == 10101

# 7. 筛选目标端口是 10101
tcp.dstport == 10101 || udp.dstport == 10101

