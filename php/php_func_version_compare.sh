# 1. 比较版本
# 如果 $version > $limit_version, 返回 1
# 如果 $version = $limit_version, 返回 0
# 如果 $version < $limit_version, 返回 -1
version_compare($version, $limit_version)

# 2. 易错点, -1 被布尔值判断为true
if(version_compare("2.1.15", "2.1.17")){
	输出1
}else{
	输出2
}

# 方案1
if(version_compare("2.1.15", "2.1.17") === 1){}
# 方案2
if(version_compare("2.1.15", "2.1.17", ">")){}

