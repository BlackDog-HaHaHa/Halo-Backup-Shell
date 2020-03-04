#!/usr/bin/bash

date=`date "+%Y-%m-%d"`
wwwroot="/root/.halo"
web="blog.boyisdead.top"

mkdir $date 

tar czvf ./$date/$web.tar.gz $wwwroot

# 配置文件打包
cp /wwwroot/halo/* ./$date
cp /etc/systemd/system/halo.service ./$date
cp /etc/nginx/nginx.conf ./$date/
cp /etc/nginx/conf.d/$web.conf ./$date/
cp /etc/nginx/ssl/$web.* ./$date/
cp /root/.config/rclone/rclone.conf ./$date/

tar czvf $web-$date.tar.gz ./$date
rm -rf $date