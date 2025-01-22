1. docker build -f Dockerfile -t test:test .
1.1 docker build 用于构建 docker 镜像
1.2 -f Dockerfile 
	-f 是选项标志，后面跟着文件名 Dockerfile，使用名为 Dockerfile 的文件作为构建镜像的配置文件
	
1.3 -t test:test
	-t 是另一个选项标志，后面跟着镜像的名称和标签。
	test:test 表示将要构建的镜像名称为 test，标签也为 test。
	标签可以帮助您区分不同的镜像版本。
1.4 句点 (.) 代表当前目录。
	表示从当前目录查找用于构建镜像的文件


