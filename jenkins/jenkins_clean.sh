# 1. 前往jenkins的工作目录
/jenkins/data/workspace

# 2. 查看最早的不维护的目录
ls -alt|grep -v tmp

# 3. 选最新的几个文件
ls -lt|grep -v tmp|tail -n 5|awk '{print $9}'

