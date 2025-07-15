LABEL stage=builder_${APP_NAME}
# 1. 上述命令是 Dockerfile 中用于添加 镜像元数据(Label)的一行, 
# 同时使用了构建时变量 `ARG APP_NAME` 来动态生成 label 值
# 作用: 给镜像添加可查询的元信息(给镜像打标签以便识别或分层处理)
# 个人理解: 为生成的 Docker 镜像添加自定义的键值对标签

