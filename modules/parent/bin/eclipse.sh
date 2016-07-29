#!/bin/bash
echo [INFO] Use maven eclipse-plugin download jars and generate eclipse project files.
echo [Info] Please add "-Declipse.workspace=<path-to-eclipse-workspace>" at the end.
cd `dirname $0`
cd ..   
mvn eclipse:clean eclipse:eclipse -DdownloadSources=true
read -p "请按回车结束"