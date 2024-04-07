#!/bin/sh
echo "当前系统的磁盘有: fdisk -l|grep 'Disk /'"
fdisk -l|grep 'Disk /'

echo "已经分区的磁盘有: fdisk -l|grep 'Linux'"
fdisk -l|grep 'Linux'

echo "1. 使用 fdisk 对数据盘进行分区，将数据盘分为一个主分区"
echo "例如 华为云: fdisk /dev/vdb"
echo "例如 华为云: Command (m for help): n"
echo "例如 华为云: Select (default p): "
echo "例如 华为云: Partition number (1-4, default 1): "
echo "例如 华为云: First sector (2048-419430399, default 2048):"
echo "例如 华为云: Last sector, +sectors or +size{K,M,G} (2048-419430399, default 419430399): "
echo "例如 华为云: Command (m for help): w"

echo "2. 格式化分区"
echo "例如 华为云: mkfs -t ext4 /dev/vdb1"

echo "3. 添加分区信息"
echo "例如 华为云: echo '/dev/vdb1 /hwdata ext4 defaults 0 0' >> /etc/fstab"
echo "验证分区信息: cat /etc/fstab|grep hwdata"
cat /etc/fstab|grep hwdata

echo "4. 挂载新分区"
echo "例如 华为云: cd /;mkdir hwdata;mount -a"
echo "验证挂载效果 df -h|grep hwdata"
df -h|grep hwdata

