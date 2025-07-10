# 1. 将大的js文件放到对象存储里
# 1.1 下载大的js文件
curl -O https://域名/ui/main.js

# 1.2 nginx配置
location = /ui/main.js {
	return 301 OSS路径;
}

