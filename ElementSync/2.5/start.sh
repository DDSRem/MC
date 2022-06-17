#!/bin/sh

if [ ! -f "/ElementSync/ElementSync.jar" ]; then
 echo -e "\033[36m ElementSync.jar文件不存在,正在创建... \033[0m"
 mv /opt/ElementSync.jar /ElementSync
 echo "ElementSync.jar文件创建成功"
else
 echo "ElementSync.jar文件存在"
 rm -rf /opt/ElementSync.jar
fi

cd /ElementSync
exec java -jar -Dfile.encoding=UTF-8 -Xmx64m ElementSync.jar