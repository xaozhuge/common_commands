# 1. 添加字段
ALTER TABLE 表名 ADD 字段名 字段类型 NOT NULL DEFAULT '默认值' COMMENT '字段说明' after 字段名;
ALTER TABLE 表名 ADD 字段名 varchar(255) NOT NULL DEFAULT '' COMMENT '字段说明';

# 2. 删除字段
ALTER TABLE 表名 DROP COLUMN 字段名;

# 3. 修改字段
ALTER TABLE 表名 MODIFY 字段名 字段类型 DEFAULT '默认值' COMMENT '字段说明';

