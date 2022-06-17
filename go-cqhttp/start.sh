#!/bin/sh

if [ ! -f "/data/go-cqhttp" ]; then
 echo -e "\033[36m go-cqhttp文件不存在,正在创建... \033[0m"
 mv go-cqhttp /data
 echo "go-cqhttp文件创建成功"
else
 echo "go-cqhttp文件存在"
 rm -rf go-cqhttp
fi

if [ ! -f "/data/config.yml" ]; then
 echo -e "\033[36m config.yml文件不存在,正在创建... \033[0m"
 mv config.yml /data
 echo "config.yml文件创建成功"
else
 echo "config.yml文件存在"
 rm -rf config.yml
fi

cd /data
./go-cqhttp