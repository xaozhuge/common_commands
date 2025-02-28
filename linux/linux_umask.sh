# 1. umask (User File-Creation Mode Mask) 通过限制文件和目录的默认权限, 
# 确保新创建的文件和目录不会被赋予过于宽松的权限, 从而提高系统的安全性.

# 2. 在Unix/Linux系统中, 文件和目录有默认的最大权限
# 文件: 默认最大权限是 0666(即rw-rw-rw-)
# 目录: 默认最大权限是 0777(即rwxrwxrwx)

# 3. umask值通过从这些默认权限中减去相应的值, 来设置实际的默认权限
# 假设umask值为022
# 文件的实际默认权限
0666 - 0022 = 0644(即-rw-r--r--)
# 目录的实际默认权限
0777 - 0022 = 0755(即drwxr-xr-x)

# 4. 查看当前umask值
umask
# 一次性设置umask值
umask 022

# 5. 永久设置umask
echo 'umask 022' >> ~/.bashrc
source ~/.bashrc

