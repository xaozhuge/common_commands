# 1. WORKDIR说明
# 用于设置工作目录(当前目录), 即后续所有命令(如RUN、COPY、CMD等)的默认执行路径
# WORKDIR: Dockerfile 指令, 设置接下来命令执行的工作目录. 如果目录不存在，会自动创建
WORKDIR /home/work/${APP_NAME}/

# 2. WORKDIR作用
# 设置上下文路径, 让后续命令更简洁
# 避免频繁使用绝对路径
# 保持代码结构清晰

# 3. 多次使用 WORKDIR 会在前一个路径基础上追加
# WORKDIR 使用绝对路径 /path:  重置为该路径
# WORKDIR 使用相对路径 subdir: 叠加到当前路径
WORKDIR /home/work
WORKDIR ${APP_NAME}
res: /home/work/${APP_NAME}

# 4. 使用效果
WORKDIR /home/work/appname/
COPY . .
RUN npm install

