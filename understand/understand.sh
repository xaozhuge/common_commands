# 1. 集群的理解
# 以大家非常熟悉的场景举例, 比如完成一项软件开发工作
# 小公司的做法就是招一个全栈工程师, 所有任务全包
# 假如小公司的全栈工程师有点异常情况(请假、跑路、忙不过来等等), 老板会考虑招多个这样的人, 这就形成了一个集群. 
# 好处是能干更多的活(负载分流) 和 互补(高可用)

# 2. 集群就是同样的活有多个人干？
# Kafka 集群的核心思想就是 "同样的活(存储、处理数据)让多个Broker(人)一起干", 这样可以实现
# 高并发(更多人干活 → 吞吐量更高)
# 高可用(一个人挂了,其他人顶上 → 服务不中断)
# 可扩展(活多了就加人 → 集群扩容)

