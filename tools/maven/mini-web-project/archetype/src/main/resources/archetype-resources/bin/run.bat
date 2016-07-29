@echo off
echo [INFO] Runing...
cd %~dp0
cd ..
set MAVEN_OPTS=-Xdebug -Xnoagent -Djava.compiler=NONE  -Xloggc:gc.log -XX:+PrintGCDateStamps -XX:+PrintGCDetails -Xrunjdwp:transport=dt_socket,address=8787,suspend=n,server=y -Xms256m -Xmx1024m -XX:MaxPermSize=256m -Dspring.profiles.active=local -Dnet.spy.log.LoggerImpl=net.spy.memcached.compat.log.Log4JLogger
call mvn spring-boot:run
pause
