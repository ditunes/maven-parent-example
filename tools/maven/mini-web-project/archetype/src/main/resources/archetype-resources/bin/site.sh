#!/bin/bash
echo [INFO] Install jar to local repository.
cd ..
cd `dirname $0`
mvn site
read -p "请输入回车结束"
