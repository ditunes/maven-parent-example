#!/bin/bash
echo [INFO] Runing...
cd `dirname $0`
cd ..
mvn clean package -Dmaven.test.skip=true -Dpackage.bin=true
read -p "请输入回车结束"
