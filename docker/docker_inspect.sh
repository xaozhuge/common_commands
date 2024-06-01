# 1. docker inspect命令用于获取一个或多个Docker对象(如容器、镜像、网络、或卷)的详细信息
# 输出结果是一个JSON格式的详细描述, 其中包含了大量关于该对象的配置和状态的信息
docker inspect <container_id_or_name>
docker inspect <image_id_or_name>
docker inspect <network_id_or_name>
docker inspect <volume_id_or_name>
