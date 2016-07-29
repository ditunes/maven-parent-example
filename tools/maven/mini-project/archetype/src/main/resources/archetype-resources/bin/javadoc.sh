#!/bin/bash
echo [INFO] Install jar to local repository.
cd `dirname $0`
cd ..
call mvn javadoc:jar
read -p "请输入回车结束"
