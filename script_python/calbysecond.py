import time
from datetime import datetime, timezone

# 输出内容
def p(content):
    print(content)
    time.sleep(1)

# 当前时间戳
def returnCurrentTimeStamp():
    timestamp = int(time.time())
    return timestamp

# 指定时间转时间戳
def toTimestamp(time_str):
    ts = datetime.strptime(time_str, "%Y-%m-%d %H:%M:%S")
    return int(ts.timestamp())

# 当天的某个时间转化为时间戳
def currentDayToTimestamp(fixed_time_str):
    today_str = datetime.now().strftime("%Y-%m-%d")
    full_datetime_str = f"{today_str} {fixed_time_str}"
    return toTimestamp(full_datetime_str)

# 函数调用
limit_a = currentDayToTimestamp("09:30:00")

# 当前时间
nowtime=datetime.now().strftime("%H:%M:%S")

