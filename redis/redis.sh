# 1. 找到含有keywords的key
redis-cli keys '*keywords*'

# 2. 找到含有keywords的key并批量删除
redis-cli keys '*keywords*'|xargs redis-cli del