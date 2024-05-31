# 1. 在使用 SSH 时，Here Document 可以用于将一组命令传递给远程服务器执行
# 这种方式特别适合在远程服务器上执行多行或复杂的命令
# 在 <<EOF 和 EOF 之间的所有命令会在远程服务器上执行，类似于在远程服务器上运行一个脚本文件
ssh test@127.0.0.1 <<EOF
ls /home/test1
if [ $? -ne 0 ]; then
  echo "远程目录 /home/test1 不存在，构建失败"
  exit 1
fi
pwd
EOF
