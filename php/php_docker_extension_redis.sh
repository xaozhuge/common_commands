# 一、由于业务需要 redis 扩展
# 1. 下载 phpredis 的压缩包或者将已有的压缩包上传到容器
curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/3.1.3.tar.gz

# 2. 解压缩
tar xfz /tmp/redis.tar.gz
# 删除不用的压缩包
rm -r /tmp/redis.tar.gz

# 3. 新建扩展存储目录
mkdir -p /usr/src/php/ext

# 4. 移动文件夹到指定位置
mv phpredis-3.1.3 /usr/src/php/ext/redis

# 5. 使用 docker-php-ext-install 安装扩展

