#1. 按行匹配, 删除所有包含 aaa   的行
#1. 按行匹配, 删除所有包含 2024/ 的行, 注意 / 的转义
sed -i '/aaa/d' 1.php
sed -i '/2024\//d' 1.php

# 2. 删除从第一行到10000行
sed -i '1,10000d' filename
# 2.1 删除第256行的内容
# Linux
sed -i '256d' filename
# Mac
sed -i '' '256d' filename

# 3. sed 替换 
# 3.1 Mac        
sed -i '' 's/before/after/g' 文件名
# 3.2 Linux
sed -i 's/before/after/g' 文件名
# 3.3 分隔符，这里的/ 可以被替换成其他字符，例如 #
sed -i 's#before#after#g' 文件名


