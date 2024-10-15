# 1. 添加字段
ALTER TABLE 表名 ADD 字段名 字段类型 NOT NULL DEFAULT '默认值' comment '字段说明' after 字段名;
ALTER TABLE 表名 ADD 字段名 varchar(255) NOT NULL DEFAULT '' comment '字段说明';

# 2. 删除字段
ALTER TABLE 表名 drop column 字段名;

