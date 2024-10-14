# 1. 返回东八区的时间, 使用 gmdate 而不是 date
$time = gmdate('Y-m-d H:i:s', time() + 8*3600);

# 2. 返回东八区的时间戳
$time = gmdate('Y-m-d H:i:s', time() + 8*3600);
$timestamp = strtotime($time);

