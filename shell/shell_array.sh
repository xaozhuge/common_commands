# 1. 定义数组
servers1=("127.0.0.1" "172.16.1.1")

servers2=(
	"127.0.0.1" 
	"172.16.1.1"
)

# 2. 数组合并
arr_combined=("${servers1[@]}" "${servers2[@]}")

# 3. 循环数组
for server in "${arr_combined[@]}"; do
	echo $server
done

