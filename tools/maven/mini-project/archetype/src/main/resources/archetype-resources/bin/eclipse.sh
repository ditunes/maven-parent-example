#!/bin/bash
echo [INFO] Use maven eclipse plugin download jar and generate eclipse project files.
echo [INFO] Please add "-Declipse.workspace=<path-to-eclipse-workspace>" at end of mvn command.
cd `dirname $0`
cd ..
mvn eclipse:clean eclipse:eclipse
read -p "请输入回车结束"
