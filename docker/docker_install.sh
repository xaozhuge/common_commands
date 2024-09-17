# 1. yum-config-manager 是 yum-utils 包的一部分
yum update
yum install -y yum-utils device-mapper-persistent-data lvm2


# 2. 向 YUM 的配置文件中添加新的软件源(仓库)
yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
ls /etc/yum.repos.d/

# 3. 安装 docker docker-compose
yum -y install docker-ce
yum -y install docker-compose

# 4. 配置docker开机启动 并 启动docker
systemctl enable docker
systemctl start docker

# 5. 修改docker的存储路径,并配置镜像加速
docker info|grep  "Docker Root Dir"
vi /etc/docker/daemon.json
{
  "registry-mirrors": [],
  "data-root": "/alidata/docker"
}

# 6. 重启docker并验证
systemctl restart docker
docker info|grep  "Docker Root Dir"

