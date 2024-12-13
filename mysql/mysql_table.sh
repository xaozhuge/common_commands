# 1. 创建数据表
CREATE TABLE `数据表名称` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `字符串类型` varchar(50) NOT NULL DEFAULT '' COMMENT '字符串备注',
  `字符串类型` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字符串支持表情',
  `日期类型` date DEFAULT NULL COMMENT '时间备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted_time` datetime DEFAULT NULL COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`),
  KEY `IDX_UPDATE_TIME` (`update_time`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='备注';

# 2. 删除数据表
drop table 数据表名称;

# 3. 显示数据表列表
show tables;

# 4. 创建数据表(选择已有数据表的字段)
create table new_table (select * from old_table);

