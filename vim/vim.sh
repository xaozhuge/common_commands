# 1. vim打开乱码,查看vim编码
:set encoding?

# 2. 修改vim编码
touch ~/.vimrc
echo ": set  encoding=utf-8" >>  ~/.vimrc


# 一、问题
vim 打开时乱码，cat 打击时不乱码

# 二、处理方式
# 1. 打开  ~/.vimrc
sudo vim ~/.vimrc

# 2. 增加以下配置
# 设置 Vim 内部使用 UTF-8 编码, 兼容性最好
set encoding=utf-8

