#!/usr/bin/bash

date=`date "+%Y-%m-%d"`

sh ./halo_backup.sh
sh ./rclone_google_drive.sh

# 生成日志文件
cat << EOF >> crontab_backup.log
$date backup is ok!
EOF