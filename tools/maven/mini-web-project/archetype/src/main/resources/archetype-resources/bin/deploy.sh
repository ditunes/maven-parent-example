#!/bin/bash
echo [INFO] Install jar to local repository.
cd `dirname $0`
mvn clean package source:jar javadoc:jar deploy:deploy -Dmaven.test.skip=true
read -p "请输入回车结束"
