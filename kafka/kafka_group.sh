# 1. 列出Kafka中所有的消费者组(consumer groups)
cd /data/kafka_2.13-3.1.1/
bin/kafka-consumer-groups.sh --bootstrap-server 192.168.0.31:19092 --list

