#!/bin/bash
echo [INFO] Runing...
cd `dirname $0`
cd ..
mvn versions:update-parent
read -p "请输入回车结束"