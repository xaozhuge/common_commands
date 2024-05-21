# 1. 查看已有的镜像
docker images

# 2. 保存已有的镜像到本地 
# docker save -o 本地名称 (仓库名称:版本号)或者(镜像ID)
docker save -o nginx_221102 nginx:1.22

# 3. 导入镜像 
# docker load < 本地名称
docker load < nginx_221102

# 4. 删除所有悬空镜像
docker image prune

# 5. 查看 mynginx:latest 镜像的详细信息
docker inspect mynginx:latest

# 6. docker image 代表 Docker 镜像子命令，用于管理 Docker 镜像







