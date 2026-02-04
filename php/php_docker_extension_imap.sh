# 一、由于邮箱业务需要 imap 扩展
apk update

apk add --no-cache imap-dev krb5-dev openssl-dev

docker-php-ext-configure imap --with-kerberos --with-imap-ssl

docker-php-ext-install imap

