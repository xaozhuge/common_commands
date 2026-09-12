free -h
# 看 available 而不是 used , Linux 会把空闲内存当 Page Cache 用
# available很低才意味着真的吃紧
# 如果 `available` 充足而 `used` 高, 那只是 page cache 占位, 不是泄漏, 先别动

