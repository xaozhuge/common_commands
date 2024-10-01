# 一. 从库同步时出现错误

# 1. 先停止slave
stop slave;

# 2. 跳过slave上的一个错误
set global sql_slave_skip_counter=1;

# 3. 启动slave
start slave;

