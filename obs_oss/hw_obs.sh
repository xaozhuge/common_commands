# 1. Linux 的 obsutil 分为 Linux AMD 64位 和 Linux ARM 64位
# 在 Linux 下看是 AMD (Intel) 还是 ARM
uname -m
# 输出 x86_64 => 是 AMD/Intel (x86 架构)
# 输出 aarch64 或 arm64 => 是 ARM 64 位
# 输出 armv7l => 是 ARM 32 位

# 2. Linux AMD 64位
wget https://obs-community.obs.cn-north-1.myhuaweicloud.com/obsutil/current/obsutil_linux_amd64.tar.gz
# 在软件包所在目录, 执行以下解压命令

