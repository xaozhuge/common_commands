# 1. 将 目录/文件 打包并压缩成 .tar.gz 文件
tar -zcvf 生成的压缩文件 被打包的目录/文件

# 2. -z 指定使用 gzip 进行压缩. 这将会生成一个 .gz 后缀的压缩文件
# 缺失影响: 如果缺少-z, tar命令将只创建一个普通的 .tar 文件(未压缩的归档文件), 而不是 .tar.gz 文件
tar -z

