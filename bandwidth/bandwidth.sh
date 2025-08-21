# 1. 安装iftop
yum -y install iftop

#2. 查看服务器网卡
ifconfig

#3. 查看指定网卡的服务，例如华为云使用 eth0
iftop -i eth0

#4. 查看带宽
/usr/sbin/iftop -i eth0 

#5. 新增带宽统计脚本
touch checkbandwidth.sh
chmod +x checkbandwidth.sh

# 6. 显示出端口
# 不加-P时, 按照服务器统计
# 加-P时, 按照端口统计
/usr/sbin/iftop -i eth0 -P

