# 1. SUBSTRING_INDEX 通过指定的分隔符将字符串拆分, 并返回指定部分的子字符串
SUBSTRING_INDEX(str, delim, count)
# 1.1 如果count是正数, 函数返回从左到右的所有部分, 直到分隔符出现count次为止
# 1.2 如果count是负数, 函数返回从右到左的所有部分, 直到分隔符出现count次为止
host 的值为 127.0.0.1:3306
SELECT SUBSTRING_INDEX(host, ':', 1) AS ip

# 2. LAST_DAY() 是MySQL的一个日期函数, 用于返回给定日期所在月份的最后一天
# 获取当前月份的最后一天
SELECT LAST_DAY(CURDATE());
# 获取特定日期的最后一天
SELECT LAST_DAY('2024-02-15');

