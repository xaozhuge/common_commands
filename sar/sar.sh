# 1. sar(System Activity Reporter)
# 是 Linux 系统 系统活动状态监控工具, 可以采集 CPU、内存、磁盘、网络等性能指标, 来自 sysstat 包
yum install sysstat

# 2. sar [选项] [采样间隔(秒)] [采样次数]
# 采样间隔: 多久采集一次数据
# 采样次数: 一共采集多少次, 采集完自动退出
# 采集网络设备统计, 每 1 秒采样 1 次, 一共采集 5 次

