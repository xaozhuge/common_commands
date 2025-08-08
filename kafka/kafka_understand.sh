# 1. kafka 核心机制: 消费者拉取(Pull)模型​
Kafka 采用 ​消费者主动拉取(Pull)而非服务端推送(Push), 但通过优化实现了接近实时通知的效果

# 2. kafka 拉取数据-消费者向 Broker 发送 ​FetchRequest​ 请求数据

