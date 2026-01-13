# 1. 创建数据库
create database if not exists 数据库名称 default character set utf8 collate utf8_general_ci;
# utf8mb4 字符集

# 2. 删除数据库
drop database 数据库名称;

# 3. 显示数据库列表, 主要有s
show databases;

# 4. 切换数据库
use 数据库名称;

