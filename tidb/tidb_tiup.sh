# 1. tiup 是由PingCAP开发的TiDB生态系统的组件管理工具
# tiup 用于管理TiDB集群及其相关组件, 包括TiDB、TiKV、PD、Prometheus、Grafana等
# tiup 可以简化集群的部署、运维、升级和扩展等操作

# 2. 启动/停止/重启 名称为 "tidb" 的TiDB集群
su tidb;
cd ;source .bash_profile;pwd;
tiup cluster start tidb
tiup cluster stop tidb
tiup cluster restart tidb

# 3. 查看集群的状态
tiup cluster display tidb



