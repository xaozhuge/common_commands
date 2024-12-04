# 1. Disk /dev/vdd 表示 云盘的设备名称
Disk /dev/vdd: 1181.1 GB, 1181116006400 bytes, 2306867200 sectors

# 2. 2306867200 sectors 表示 云盘容量= 2306867200 * 512 bytes = 1100GB
Disk /dev/vdd: 1181.1 GB, 1181116006400 bytes, 2306867200 sectors

# 3. Disk label type 值为dos表示MBR分区, 值为gpt表示GPT分区
Disk label type: dos

# 4. 如果有如下信息表示已分区
# Device取值为分区名称(例如:/dev/vdd1), 数字1是分区编号
Device Boot      Start         End      Blocks   Id  System
/dev/vdd1         2048  2306867166  1153432559+  83  Linux

