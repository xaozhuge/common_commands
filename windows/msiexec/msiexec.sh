# 1. 用 Windows Installer (msiexec) 安装一个 MSI 安装包的静默安装命令, 并且会指定安装路径和安装日志位置
# 添加 /L*v 参数生成详细日志文件
msiexec /i "C:\Users\zzz\Desktop\soft.msi" /quiet INSTALLDIR="C:\Users\zzz\Desktop" /L*v "C:\Users\zzz\Desktop
zzz.txt"

# 2. 具体说明
# msiexec: Windows Installer 的命令行工具, 用来安装、修改、卸载 .msi 包
msiexec /i "C:\Users\zzz\Desktop\soft.msi" /quiet INSTALLDIR="C:\Users\zzz\Desktop" /L*v "C:\Users\zzz\Desktop
zzz.txt"

