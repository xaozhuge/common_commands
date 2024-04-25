# 1. 添加唯一键组合索引
ALTER TABLE 表名 ADD unique `IDX_索引名称`(字段1, 字段2);

# 2. 添加组合索引
ALTER TABLE 表名 ADD index  `IDX_索引名称`(字段1, 字段2);

# 3. 添加单个索引
ALTER TABLE 表名 ADD index  `IDX_索引名称`(字段1);

# 4. 添加唯一索引
ALTER TABLE 表名 ADD unique `IDX_索引名称`(字段1);

# 5. 根据索引名称删除索引
ALTER TABLE 表名 DROP index `IDX_索引名称`;

# 6. 建索引的字段过长时
alter table 表名 ADD index  `IDX_索引名称`(`字段1`(长度));


