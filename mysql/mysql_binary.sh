# 1. BINARY 关键字在 MySQL 中用于进行 二进制比较, 强制比较时区分大小写
# 1.1 where中使用
WHERE name = 'alice';
WHERE BINARY name = 'alice';

# 1.2 join中使用
a inner join b on BINARY a.name = b.name

