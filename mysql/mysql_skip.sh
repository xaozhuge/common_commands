# 1、打开配置文件 /etc/my.cnf
vi /etc/my.cnf
# 2、在 [mysqld] 模块下 添加 如下代码
skip-grant-tables
# 3、重启 mysql ，加载配置
/etc/init.d/mysqld restart
# 4、直接登录数据库，不需要加密码 
mysql
# 5、切换数据库
use mysql
# 6、更新密码 
update user set password=password("密码") where user="用户名";
# 7、刷新权限
flush privileges;


