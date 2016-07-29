#!/bin/bash
echo '[info] 执行项目打包部署'
cd `dirname $0`
cd ..
mvn clean package deploy:deploy -U -e -B -Dmaven.test.skip=true
read -p "请按回车结束"