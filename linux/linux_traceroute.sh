# 1. traceroute 是一个用于显示数据包从本地机器到目标主机之间经过的所有路由（跳数）的工具
# 它可以帮助排查网络延迟、路由中断、或不正常的网络路径问题

# 2. 输出将显示从你的计算机到 baidu 服务器之间的每一跳的路由和延迟
traceroute [选项] <目标主机>
traceroute www.baidu.com

# 3. 输出结果解释
# 序号 (Hop Number): 每一跳的编号, 表示数据包经过的路由设备

# 路由IP地址: 每一跳设备的IP地址或主机名

# 延迟时间: 数据包往返到每一跳设备的响应时间(通常显示3次尝试的结果)

