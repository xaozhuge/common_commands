# 1. Linux 的 obsutil 分为 Linux AMD 64位 和 Linux ARM 64位
# 在 Linux 下看是 AMD (Intel) 还是 ARM
uname -m
# 输出 x86_64 => 是 AMD/Intel (x86 架构)
# 输出 aarch64 或 arm64 => 是 ARM 64 位
# 输出 armv7l => 是 ARM 32 位

# 2. Linux AMD 64位
wget https://obs-community.obs.cn-north-1.myhuaweicloud.com/obsutil/current/obsutil_linux_amd64.tar.gz
# 在软件包所在目录, 执行以下解压命令
tar -xzvf obsutil_linux_amd64.tar.gz
# 进入obsutil所在目录。“x.x.x”表示obsutil的版本号
cd obsutil_linux_amd64_x.x.x
# 执行以下命令，为obsutil增加可执行权限
chmod 755 obsutil
# 继续在目录中执行以下命令, 如果能顺利返回obsutil版本号, 说明安装成功
./obsutil version

# 3. 将本地 test.txt 文件上传至 bucket-test 桶中
./obsutil cp /temp/test.txt obs://bucket-test/test.txt
# 对应的下载地址
https://bucket-test.obs.cn-north-4.myhuaweicloud.com/test.txt

# 4. 下载 bucket-test 桶中的 test.txt 文件
./obsutil cp obs://bucket-test/test.txt test.txt

# 5. 参考文档
https://support.huaweicloud.com/utiltg-obs/obs_11_0003.html

# 6. 初始化obs配置
obsutil config -i=永久或者临时访问密钥中的AK -k=永久或者临时访问密钥中的SK -e=obs.cn-north-4.myhuaweicloud.com
# 生成的配置文件位置

