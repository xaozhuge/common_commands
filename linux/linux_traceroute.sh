# 1. traceroute 是一个用于显示数据包从本地机器到目标主机之间经过的所有路由（跳数）的工具
# 它可以帮助排查网络延迟、路由中断、或不正常的网络路径问题

# 2. 输出将显示从你的计算机到 baidu 服务器之间的每一跳的路由和延迟
traceroute [选项] <目标主机>
traceroute www.baidu.com

# 3. 输出结果解释
# 序号 (Hop Number): 每一跳的编号, 表示数据包经过的路由设备

# 路由IP地址: 每一跳设备的IP地址或主机名

# 延迟时间: 数据包往返到每一跳设备的响应时间(通常显示3次尝试的结果)

# * 星号: 表示该跳没有响应, 可能是设备配置为不回复ICMP/TCP数据包

# 4. 指定目标端口, 使用特定端口进行追踪 (默认使用ICMP)
traceroute -p <端口号> <目标主机>
traceroute -p 22 example.com

# 5. 指定协议, 可以选择使用TCP或UDP, 而不是默认的ICMP
# ICMP(默认) : 适合普通网络路径测试
# TCP: 适合测试指定服务(如SSH、HTTP)的路由
# UDP: 默认选择(有时被防火墙拦截)
# 使用TCP
traceroute -T <目标主机>  

# 6. 设置最大跳数, 限制数据包追踪的最大跳数(默认30)
traceroute -m <跳数> <目标主机>
traceroute -m 10 example.com

