ARG APP_NAME=red
# 1. ARG是Dockerfile的指令, 用来定义一个在docker build 时可传入的变量

# 2. red是默认值(当构建时没有指定时使用), eg:
ARG APP_NAME=red
RUN echo "App Name is $APP_NAME"

