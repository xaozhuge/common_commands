#!/bin/bash
USER=
PASSWORD=
IP=
PORT=
nowdate=`date +%Y%m01`
desdirfirst=/upload/$(date -d "$nowdate last day" +%Y-%m-%d)

srcdir=/alidata/www/upload/csvfile/$(date +%Y-%m)'-01'
if [ ! -d $srcdir ];then
	mkdir $srcdir
fi

base_info=${desdirfirst}/base_info.csv
new_media=${desdirfirst}/new_media.csv

lftp -u ${USER},${PASSWORD} sftp://${IP}:${PORT}<<EOF
lcd ${srcdir}
get $base_info
get $new_media
by
EOF

