# 1. kafka 核心机制: 消费者拉取(Pull)模型​
Kafka 采用 ​消费者主动拉取(Pull)而非服务端推送(Push), 但通过优化实现了接近实时通知的效果

# 2. kafka 拉取数据-消费者向 Broker 发送 ​FetchRequest​ 请求数据
# 2.1 无数据时的行为​
# Broker 不会立即返回空响应, 而是 ​阻塞等待​ (默认最多 max.poll.interval.ms, 如 5 秒), 直到新数据到达或超时

# 2.2 有数据时的行为​
# Broker 立即返回一批数据(受 max.poll.records 和 fetch.max.bytes 限制)
​
# 2.3 重复拉取​
# 消费者处理完当前批次后, 立即发送下一个 FetchRequest, 形成 ​循环长轮询

