# 1. 查看磁盘挂载情况
df -h
# 2. 取消磁盘挂载, /alidata1 为挂载的目录
sudo umount /alidata1
# 3. 移除分区信息,移除类似 /dev/vdb1 /alidata1 ext4 defaults 0 0
cat /etc/fstab|grep "/alidata1"
vi /etc/fstab

