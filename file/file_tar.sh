# 1. 将 目录/文件 打包并压缩成 .tar.gz 文件
# 压缩文件需要避免带有绝对路径
tar -zcvf 生成的压缩文件 被打包的目录/文件
tar -zcvf 1.tar.gz 1.sql

# 2. -z 指定使用 gzip 进行压缩. 这将会生成一个 .gz 后缀的压缩文件
# 缺失影响: 如果缺少-z, tar命令将只创建一个普通的 .tar 文件(未压缩的归档文件), 而不是 .tar.gz 文件
tar -z

# 3. -c 创建一个新的归档文件（打包文件）
# 缺失影响: 如果缺少-c, tar将不会创建新的归档文件, 而是可能执行解压缩(使用-x)或列出文件(使用-t)等操作. 因此, 缺少 -c 会导致命令无法正常运行, 并可能出现错误提示
tar -c

# 4. -v 显示详细的过程信息. 在压缩或解压缩过程中, 会列出正在处理的文件名
# 缺失影响: 如果缺少-v, tar命令仍然可以正常运行, 但不会显示正在处理的文件列表. 命令执行后, 屏幕上不会有文件列表输出, 执行过程更加安静
tar -v

# 5. -f 指定输出的文件名, 即创建的压缩包的名称. 这个选项后紧跟着的参数 是压缩包的文件名
# 缺失影响: 如果缺少-f, tar会尝试将归档内容输出到标准输出(通常是终端), 而不是保存到一个文件中. 这意味着归档的二进制数据会直接显示在终端上, 导致终端输出乱码, 也不能生成预期的压缩文件
tar -f

# 6. 解压缩
tar xzf 被压缩的文件
tar xzf 1.tar.gz

# 7. -x 参数用于解压, 将指定的归档文件(例如.tar.gz)解压缩
tar -x 

# 8. -C 参数用于指定解压的目标目录, tar会将解压出的文件放到由 -C 指定的目录中, 如果这个目录不存在, 可以先手动创建它
tar -C /path/to/directory

