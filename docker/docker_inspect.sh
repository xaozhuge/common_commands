# 1. docker inspect命令用于获取一个或多个Docker对象(如容器、镜像、网络、或卷)的详细信息
# 输出结果是一个JSON格式的详细描述, 其中包含了大量关于该对象的配置和状态的信息
docker inspect <container_id_or_name>
docker inspect <image_id_or_name>
docker inspect <network_id_or_name>
docker inspect <volume_id_or_name>

# 2. --format 选项用于提取特定的字段, 而不是返回完整的JSON输出.
# --format 使用Go模板语法
docker inspect --format='{{.LogPath}}' php56_c

# 3. 获取docker容器的日志路径
docker inspect php56_c|grep -i log


