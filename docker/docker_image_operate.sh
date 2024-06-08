# 1. 保存已有的镜像到本地 
# docker save -o localname ImageName[:tag]/ImageID
docker save -o nginx_221102 nginx:1.22

# 2. 导入镜像 
# docker load < localname
docker load < nginx_221102

# 3. 为Docker镜像添加一个新的标签
docker tag source_image[:tag] target_image[:tag]

