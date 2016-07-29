#!/bin/bash
echo [INFO] Runing...
cd `dirname $0`
cd ..
MAVEN_OPTS=-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8787,suspend=n,server=y -Xms256m -Xmx512m -XX:MaxPermSize=256m -Dspring.profiles.active=local -Dnet.spy.log.LoggerImpl=net.spy.memcached.compat.log.Log4JLogger
mvn spring-boot:run
read -p "请输入回车结束"
