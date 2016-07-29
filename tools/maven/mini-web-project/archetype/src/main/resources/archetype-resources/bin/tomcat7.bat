@echo off
echo [INFO] Install jar to local repository.

cd %~dp0
cd ..
set MAVEN_OPTS=-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8787,suspend=n,server=y -Xms256m -Xmx512m -XX:MaxPermSize=256m -Dspring.profiles.active=local -Dnet.spy.log.LoggerImpl=net.spy.memcached.compat.log.Log4JLogger
call mvn tomcat7:run
cd bin
pause