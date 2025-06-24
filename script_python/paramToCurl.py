import time
import json
import pymysql
from pymysql.cursors import DictCursor
from urllib.parse import urlencode

id=

# 输出后退出
def p(content):
    print(content)
    exit()

# 定义字典
map = {
    "key1":"value1",
    "key2":"value2"
}

# 建立 mysql 连接
conn = pymysql.connect(
    host=host,
    port=port,
    user=user,
    password=password,
    database=database,
    charset="utf8mb4",
    # 关键点 用于返回字段的字典
    cursorclass=DictCursor  
)

# 获取游标
cursor = conn.cursor()
# 执行 SQL
cursor.execute("SELECT * FROM test WHERE id = %s", (id, ))

# 获取结果(一条数据)
result = cursor.fetchone()

# 获取结果（所有满足的数据）
result = cursor.fetchall()

# 关闭连接
cursor.close()
conn.close()

# 获取字段的值
source = result['source'];
method = result['method'];

# 字符串json转字典
post = json.loads(result['post'])
token  = post['token'];

# 删除字典中的值
del post["token"]

# 拼接字符串
url_pre = map[source]
url =  f"{url_pre}{method}"

# 将字典转换成字符串, 并进行URL编码
param_str = urlencode(post)

# 定义集合
plat= {"变量","变量"}

# 判断变量是否在集合中
if source in plat:
    # 三引号字符串的使用
    cmd=f"""export https_proxy=http://127.0.0.1:8888;curl -s -X POST -H "Content-Type: application/x-www-form-urlencoded" -H 'Authorization: {token}' -d "{param_str}" {url} ;"""
else:

