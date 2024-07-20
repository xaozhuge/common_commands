# 1. variables 定义环境变量, 这些环境变量 可以在 CI/CD 管道中使用 $APP_NAME
variables:
	APP_NAME: test_app

# 2. stages 是用于定义 CI/CD 管道中不同阶段的部分. 这里包含2个阶段build和deploy
stages:
	- build
	- deploy

