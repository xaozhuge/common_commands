#!/bin/sh

# 表注释
# CREATE TABLE `server` (
#   `id` int(11) NOT NULL AUTO_INCREMENT,
#   `user` varchar(255) DEFAULT '' COMMENT '用户名',
#   `ip_public` varchar(50) DEFAULT '' COMMENT '公网IP',
#   `ip_private` varchar(50) DEFAULT '' COMMENT '内网IP',
#   `remark` varchar(255) DEFAULT '' COMMENT '服务器备注',
#   `display_flag` tinyint(1) DEFAULT '1' COMMENT '是否显示 1是0否',
#   `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#   `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
#   PRIMARY KEY (`id`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务器管理';

# mysql 账号
user=
# mysql 密码
password=
# 临时服务器列表
server_list=~/script/server_list.txt

echo > $server_list

list=`
mysql -u$user -p$password  -e \
"use test;
select concat('(',id,')|',user,'|',ip_public,'|',ip_private,'|',remark) from server where user <> '';" \
2>&1 | grep -v 'Using a password' |grep -v remark`

for info in $list; do
    echo $info >> $server_list
done

