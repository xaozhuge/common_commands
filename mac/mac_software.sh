# 1. 解决 mac 软件已损坏或者软件闪退
# 查看是否有 com.apple.quarantine
xattr 软件路径

# 2. 移除 com.apple.quarantine 校验
sudo xattr -rd com.apple.quarantine 软件路径

