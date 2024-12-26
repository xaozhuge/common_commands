# 1. 验证
php -m | grep redis
php -m | grep bcmath
php -m | grep gmp

# 2. docker内安装简单extension
install-php-extensions bcmath
install-php-extensions gmp

# 3. docker内安装复杂extension, 例如redis
# 3.1 将 redis-5.3.7.tgz拷贝到容器内
docker cp redis-5.3.7.tgz php73_c:/tmp/extensions

# 3.2 命令行执行 installExtensionFromTgz
installExtensionFromTgz()
{
    tgzName=$1
    result=""
    extensionName="${tgzName%%-*}" 
    shift 1
    result=$@
    mkdir ${extensionName}
    tar -xf ${tgzName}.tgz -C ${extensionName} --strip-components=1
    ( cd ${extensionName} && phpize && ./configure ${result} && make ${MC} && make install )

    docker-php-ext-enable ${extensionName}
}

# 3.3 命令行执行redis安装
installExtensionFromTgz redis-5.3.7

