#1. 删除含有 aaa 的一行数据
sed -i '/aaa/d' 1.php

# 2. 删除从第一行到10000行
sed -i '1,10000d' filename

# 3. sed 替换 
# 3.1 Mac        
sed -i '' 's/before/after/g' 文件名
# 3.2 Linux
sed -i 's/before/after/g' 文件名
