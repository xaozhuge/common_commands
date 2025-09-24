# 1. 推荐的方法. Linux 系统会在 /etc 目录下存放包含版本信息的文件, 文件的名称直接指明了发行版
cat /etc/*-release

# 2. 这个文件是标准化的, 包含的信息更清晰, cat /etc/*-release 通常会显示这个文件的内容
cat /etc/os-release

