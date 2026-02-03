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
# 设置自动编码探测顺序, 将严格的编码放前面
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

