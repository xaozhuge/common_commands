# 1. 打开官网 
https://go.dev/dl/

# 2. 选择版本
# Mac 根据芯片选择 x86-64 还是 ARM64
# 例如 选择 https://go.dev/dl/go1.22.0.darwin-amd64.tar.gz

# 3. 解压缩并指定解压的目标目录
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.darwin-amd64.tar.gz
# mac /usr/local 没权限, 修改目标目录
rm -rf /Users/zzz/Downloads/go && tar -C /Users/zzz/Downloads -xzf go1.22.0.darwin-amd64.tar.gz

# 4. 默认 配置 PATH
export PATH=$PATH:/usr/local/go/bin

# mac 一次生效
export PATH=$PATH:/Users/zzz/Downloads/go/bin
# mac 始终生效 
vi ~/.bash_profile
export PATH=$PATH:/Users/zzz/Downloads/go/bin
source ~/.bash_profile

