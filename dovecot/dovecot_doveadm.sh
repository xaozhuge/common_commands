# 1. 获取 指定(用户)邮箱的 所有邮件键(uid)
doveadm fetch -u 用户@域名 "uid" mailbox INBOX all
# 用户多少封邮件, uid就是多少, uid针对每一个用户是唯一的

# 2. 获取 指定(用户)邮箱的 所有邮件键(uid)、邮件名前半部分
doveadm fetch -u 用户@域名 "uid guid" mailbox INBOX all

# 3. 获取 指定(用户)邮箱 并且 指定邮件uid 的 body(正文)
doveadm fetch -u 用户@域名 "body" mailbox INBOX uid
# 正文的内容做了base64处理, 并且字符集是gb18030, 需要做特殊处理, 例如python处理
import base64
print(base64.b64decode("xOO6wy3V/c7E").decode('gb18030'))

# 4. 获取其他常用信息
# 邮件的标题
doveadm fetch -u 用户@域名 "hdr.subject" mailbox INBOX uid
# 邮件的发送人
doveadm fetch -u 用户@域名 "hdr.From" mailbox INBOX uid

