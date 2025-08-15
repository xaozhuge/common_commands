# 1. 用于将主机中的文件复制到镜像内的指定路径
# 例如将代码拷贝到镜像内
# COPY: Dockerfile 指令, 用于 复制文件或目录 到镜像中
# .   : 源路径, 表示 当前构建上下文目录(即 `docker build` 命令所在的目录), 也就是docker容器外的路径
# /home/work/${APP_NAME}/: 目标路径, 镜像内部的路径, 可以包含环境变量 `${APP_NAME}`
COPY . /home/work/${APP_NAME}/

# 2. COPY作用
# 把当前目录下的所有文件(除 `.dockerignore` 中排除的)复制到镜像内 `/home/work/${APP_NAME}/` 目录下
# 通常用于将应用源码、配置文件等打包进镜像
COPY . /home/work/${APP_NAME}/

# 3. 源路径和目标路径
# 源路径(`.`)不支持变量, 只能是明确路径
# 目标路径支持变量(使用ARG), 目标路径在构建时可以用 ARG 替换
COPY . /home/work/${APP_NAME}/

# 4. ARG 和 ENV 设置变量
# ARG 是在构建镜像(docker build)时传入的参数, COPY、RUN、ADD等构建阶段指令只能访问 ARG, 不能访问 ENV 变量
# ENV 是为容器运行时设置环境变量, COPY 在构建阶段执行, 此时不会识别 ENV 设置的变量路径

# 5. COPY 遇到 .dockerignore 文件
# 如果你有 .dockerignore 文件, COPY 时会忽略其中列出的文件
# 建议忽略例如 .git、node_modules 临时构建目录等无用内容

# 6. COPY 覆盖行为
# 如果目标路径已经有文件, COPY 会覆盖(但不能部分合并目录)

