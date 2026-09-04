# 1. 查看开启的端口
sudo lsof -i -n -P|grep LISTEN

# 2. 源端口监控
tcpdump -vvv >> temp.log

# 3. 编辑配置文件 ~/.bashrc
vim ~/.bashrc
# 将函数代码粘贴到文件末尾保存退出
port() {
    if [ $# -eq 0 ]; then
        sudo lsof -i -n -P | grep LISTEN
    else
        sudo lsof -i -n -P | grep LISTEN | grep "$1"
    fi
}
# 重载配置使其立即生效
source ~/.bashrc

# 使用示例
# 查看本机所有监听端口

