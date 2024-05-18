# 1. 查看已有的镜像
docker images

# 2. 保存已有的镜像到本地 
# docker save -o 本地名称 (仓库名称:版本号)或者(镜像ID)
docker save -o nginx_221102 nginx:1.22

# 3. 导入镜像 
# docker load < 本地名称
docker load < nginx_221102

# 4. 删除所有悬空镜像



