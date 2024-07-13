# 1. 查看docker的用户组
cat /etc/group|grep docker

# 2. 新增用户组 docker
groupadd docker

# 3. 普通用户新增 docker 的附加组, 将用户追加到一个附加组中, 而不从其他组中删除
usermod -aG docker jenkins
