#1. 删除含有 aaa 的一行数据
sed -i '/aaa/d' 1.php

# 2. 删除从第一行到10000行
sed -i '1,10000d' filename
