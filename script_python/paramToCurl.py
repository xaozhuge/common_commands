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

