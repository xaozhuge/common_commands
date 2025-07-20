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
# 2.7 /etc/apk/repositories: Alpine Linux 的软件源配置文件, 里面列出了 APK 包管理器使用的仓库地址

RUN apk update
# 3.1 在 Alpine Linux 系统(尤其常用于 Docker 容器)中使用的命令, 用于更新软件包索引(即刷新本地缓存的包列表)

RUN apk update
# 4.1 RUN: Dockerfile 中的指令, 表示在构建镜像时执行该命令                                                    |
# 4.2 apk: Alpine的包管理器, 全称是Alpine Package Keeper. 类似于Ubuntu中的apt或CentOS中的yum

