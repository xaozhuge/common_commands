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

# 7. docker image prune 是 docker image 的一个子命令，用于清理 Docker 镜像。
# 它会查找并删除未被任何容器使用的镜像
	# 7.1 --force: 这是 docker image prune 的一个选项，用于强制删除镜像。
	# 7.2 --filter "label=stage=builder_test": 
	# 这也是 docker image prune 的一个选项，用于指定要删除的镜像的筛选条件
	# 	7.2.1 --filter: 表示使用过滤器来指定要处理的镜像
	# 	7.2.2 "label=stage=builder_test": 这个部分定义了过滤条件。
	# 	它仅匹配具有标签 "stage=builder_test" 的镜像。
	# 	7.2.3 label: 表示根据镜像的标签进行筛选。








