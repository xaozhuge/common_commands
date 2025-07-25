# 1. docker 安装向量数据库 milvus
https://github.com/milvus-io/milvus/blob/master/deployments/docker/standalone/docker-compose.yml

# 2. 版本
2.5.13

# 3. 启动环境
docker-compose up -d

# 4. 将容器中的配置文件拷贝到容器外
docker cp milvus-standalone:/milvus/configs/milvus.yaml /tmp/

# 5. 开启密码认证, 修改 milvus.yaml 
authorizationEnabled: false
authorizationEnabled: true

# 6. 修改默认密码
defaultRootPassword: Milvus
defaultRootPassword: 自定义密码


