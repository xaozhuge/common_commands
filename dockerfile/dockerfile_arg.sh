ARG APP_NAME=red
# 1. ARG是Dockerfile的指令, 用来定义一个在docker build 时可传入的变量

# 2. red是默认值(当构建时没有指定时使用), eg:
ARG APP_NAME=red
RUN echo "App Name is $APP_NAME"

# 3. 在以下例子中, APP_NAME的值就会是blue, 不会使用默认的red
docker build --build-arg APP_NAME=blue -t myapp .

# 4. ARG是构建阶段的变量, 不会出现在最终容器的环境变量中

