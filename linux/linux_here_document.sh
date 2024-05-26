# 1. << EOF 是一种常用的 "Here Document"（文档内嵌）语法，
# 用于将多行字符串作为输入传递给命令或脚本。
command <<EOF
multiline
text
EOF
# 1.1 command 是你要执行的命令
# 1.2 <<EOF 表示开始 Here Document
# 1.3 EOF 是结束符，可以是任意字符串，但通常使用 EOF
# 1.4 在 <<EOF 和 结束符 之间的所有文本都会作为输入传递给 command



