#!/usr/bin/bash

install="no"
backup="yes"
date=`date "+%Y-%m-%d"`
rclone_name="google_drive"
web="blog.boyisdead.top"

# rclone官方安装脚本
if [ $install == "yes" ]
then
    curl https://rclone.org/install.sh | sudo bash
fi

if [ $backup == "yes" ]
then
    rclone move ./$web-$date.tar.gz $rclone_name:$web
fi