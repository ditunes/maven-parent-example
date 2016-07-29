@echo off
echo [INFO] 确保已用mvn install安裝tools\maven下的项目模板

set MVN=mvn
if exist "tools\maven\apache-maven-3.0.4\" set MVN="%cd%\tools\maven\apache-maven-3.0.4\bin\mvn.bat"
echo Maven命令为%MVN%


set /p drive=请输入目录名(如:D:\\summall-test\\):
if "%drive%"=="" set drive="%~dp0"generated-projects
if not exist "%drive%" mkdir %drive%
cd /d %drive%
call %MVN% archetype:generate -DarchetypeCatalog=local
pause
