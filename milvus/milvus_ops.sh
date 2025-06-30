# 1. docker 安装向量数据库 milvus
https://github.com/milvus-io/milvus/blob/master/deployments/docker/standalone/docker-compose.yml

# 2. 版本
2.5.13

# 3. 启动环境
docker-compose up -d

# 4. 将容器中的配置文件拷贝到容器外
docker cp milvus-standalone:/milvus/configs/milvus.yaml /tmp/

