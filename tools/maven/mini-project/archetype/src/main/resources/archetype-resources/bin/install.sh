#!/bin/bash
echo [INFO] Install jar to local repository.
cd `dirname $0`
cd ..
mvn clean install -U -Dmaven.test.skip=true
read -p "请输入回车结束"
