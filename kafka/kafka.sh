# 3. 从latest位移位置开始消费该主题的所有分区消息，即仅消费正在写入的消息
./kafka-console-consumer.sh --bootstrap-server 173.16.0.62:9092 --topic example
# 4. 从开始位置消费，并写入文件
./kafka-console-consumer.sh --bootstrap-server 173.16.0.62:9092 --from-beginning --topic example > temp.log
# 5. 查看所有消费组详情
./kafka-consumer-groups.sh --bootstrap-server 173.16.0.62:9092 --describe --all-groups

