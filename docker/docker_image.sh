# 1. 查看已有的镜像
docker images

# 2. 删除所有悬空镜像
docker image prune

# 3. docker image 代表 Docker 镜像子命令，用于管理 Docker 镜像

# 4. docker image prune 是 docker image 的一个子命令，用于清理 Docker 镜像。它会查找并删除未被任何容器使用的镜像
	# 4.1 --force: 这是 docker image prune 的一个选项，用于强制删除镜像。
	# 4.2 --filter "label=stage=builder_test": 这也是 docker image prune 的一个选项，用于指定要删除的镜像的筛选条件
	# 	4.2.1 --filter: 表示使用过滤器来指定要处理的镜像
	# 	4.2.2 "label=stage=builder_test": 这个部分定义了过滤条件。它仅匹配具有标签 "stage=builder_test" 的镜像。
	# 	4.2.3 label: 表示根据镜像的标签进行筛选。
	# 	4.2.4 stage=builder_test: 这部分指定了要匹配的标签的键和值。它查找具有键 "stage" 和值 "builder_test" 的标签。







