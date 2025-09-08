# 1. SPF, 全称为 ​Sender Policy Framework​(发件人策略框架), 是一种电子邮件认证协议
# 它的核心目的是防止他人伪造你的域名来发送垃圾邮件或钓鱼邮件

# 2. 工作原理
# 2.1 域名所有者在 域名的 DNS 记录中, 发布一个 SPF 记录
# 这个 SPF 记录是一个列表, 明确指定了哪些邮件服务器有权限代表你的域名发送邮件(例如, 你的公司邮件服务器、Gmail、Outlook、SendGrid 等第三方服务)

# 2.2 当收件方的邮件服务器(如 Gmail, 腾讯企业邮等) 收到一封声称来自你的域名的邮件时, 
# 它会检查这封邮件的发送服务器的 IP 地址
# 查询你域名的 DNS 中的 SPF 记录
# 判断这个发送服务器的 IP 是否在你声明的"授权列表"里

# 2.3 判断
# 如果 IP 在列表中, 则 SPF 验证通过, 邮件被认为是合法的
# 如果 IP ​不在列表中, 收件方服务器就会认为这封邮件是伪造的, 可能会将其标记为垃圾邮件或直接拒绝接收

# 2.4 配置SPF
# 配置 SPF 实际上就是在你的域名的 DNS 管理后台, 添加一条 ​TXT​ 类型的记录

# 2.5 
一级域名填写为:@
类型选择: ​TXT​
内容为: "v=spf1 ip4:IP地址 ~all"
或者内容为: "v=spf1 ip4:IP地址 include:_spf.google.com include:spf.mail.qq.com"

# 3. 说明
# include:_spf.google.com 和 include:spf.mail.qq.com 给 Gmail/QQ 的服务器授权
# 如果根本不用 Gmail/QQ 代发, 那完全可以不写
# 如果会在 Gmail/QQ 里发邮件, 就必须加, 不然收件方会认为是假冒
"v=spf1 ip4:IP地址 include:_spf.google.com include:spf.mail.qq.com"

# 4. 获取 QQ邮箱的SPF记录​, 查询 spf.mail.qq.com 的TXT记录, 同样返回SPF规则
dig +short spf.mail.qq.com TXT

