# 一、Linux全局配置别名
# 1. sudo -i 切换到root账号
# 2. 查看 /etc/bashrc 是否已有别名
# 3. 执行如下命令
# demo1
echo "alias test='cd /alidata/www/test.com/demo1'" >> /etc/bashrc
# demo2
echo "alias bak='source /alidata/www/script.com/bak.sh'" >> /etc/bashrc
echo "alias bak='source /hwdata/script/bak.sh'" >> /etc/bashrc
# demo3
echo "alias remark='cat /alidata/www/script.com/remark'" >> /etc/bashrc
# 4. 加载配置
source /etc/bashrc

