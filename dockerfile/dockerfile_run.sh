RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
# 1.1 将 Alpine Linux 的默认软件源镜像地址替换为国内的 USTC 镜像源(中国科学技术大学镜像), 以提高软件包下载速度, 特别是在国内网络环境中
# 1.2 使用场景
	# Dockerfile 构建 Alpine 容器镜像
	# 提高构建或更新 Alpine 包的速度
	# 避免访问国外源时超时或失败的问题

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
# 2.1 RUN: Dockerfile 中用于执行一条命令. 表示这是在构建镜像过程中运行的操作
# 2.2 sed: 是一个流编辑器, 用于查找和替换文本
# 2.3 -i: 表示直接修改文件, 而不是将结果输出到标准输出
# 2.4 s/.../.../g: 是 sed 的替换命令, 格式为：`s/原字符串/新字符串/g`
	# `g` 表示全局替换
	# 替换后, `apk add`、`apk update` 等命令在下载软件时会走国内源, 速度更快, 更稳定
# 2.5 dl-cdn.alpinelinux.org: Alpine Linux 的默认官方软件包镜像站
# 2.6 mirrors.ustc.edu.cn: 中国科学技术大学提供的开源镜像站, 更适合国内用户使用

