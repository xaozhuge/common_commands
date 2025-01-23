# 1. 使用 -O 选项, curl 会下载文件并保留其原始文件名
# 输出写到该文件中, 保留远程文件的文件名
# --remote-name
curl -O http://example.com/file.txt

# 2. 使用 -o 选项, curl 可以将下载的文件保存为指定的文件名
curl -o myfile.txt http://example.com/file.txt

