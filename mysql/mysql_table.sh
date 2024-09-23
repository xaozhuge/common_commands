# 1. 创建数据表
CREATE TABLE `数据表名称` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `字符串类型` varchar(50) DEFAULT '' COMMENT '字符串备注',
  `日期类型` date DEFAULT NULL COMMENT '时间备注',
  `display_flag` tinyint(4) DEFAULT '1' COMMENT '是否显示 1是0否',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='备注'

