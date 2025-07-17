RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
# 1.1 将 Alpine Linux 的默认软件源镜像地址替换为国内的 USTC 镜像源(中国科学技术大学镜像), 以提高软件包下载速度, 特别是在国内网络环境中
# 1.2 使用场景
	# Dockerfile 构建 Alpine 容器镜像
	# 提高构建或更新 Alpine 包的速度
	# 避免访问国外源时超时或失败的问题

