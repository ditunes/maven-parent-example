#!/bin/bash
cd `dirname $0`
cd ..
mvn install
read -p "请按回车结束"