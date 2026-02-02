# 1. vim打开乱码,查看vim编码
:set encoding?

# 2. 修改vim编码
touch ~/.vimrc
echo ": set  encoding=utf-8" >>  ~/.vimrc


# 一、问题
vim 打开时乱码，cat 打击时不乱码

