#!/bin/bash
#----function define---#
function processError(){
	echo [ERROR] $1
	read -p "请输入回车结束"
	exit 127
}
#--------------------#
cd `dirname $0`
echo [INFO] 确保默认JDK版本为JDK6.0及以上版本,已配置JAVA_HOME.
mvnPath=`which mvn`
if test -e $mvnPath
then
	echo "Maven命令为$mvnPath"
	echo [Step 1]  安装Youline 所有modules到本地Maven仓库, 为所有项目生成Eclipse项目文件.
	mvn clean install -Pmodules -Dmaven.test.skip=true
	if test $? -ne 0
	then
		processError ' mvn install command  execute error '
	else
		echo 'success' 
		mvn eclipse:clean eclipse:eclipse -DdownloadSources=true
		if test $? -ne 0 
		then
			processError ' mvn eclipse command execute error'
		else
			read -p "请输入回车结束"
		fi
	fi
else
	processError '找不到mvn命令' 
	
fi

