@echo off
echo [INFO] ȷ������mvn install���btools\maven�µ���Ŀģ��

set MVN=mvn
if exist "tools\maven\apache-maven-3.0.4\" set MVN="%cd%\tools\maven\apache-maven-3.0.4\bin\mvn.bat"
echo Maven����Ϊ%MVN%


set /p drive=������Ŀ¼��(��:D:\\summall-test\\):
if "%drive%"=="" set drive="%~dp0"generated-projects
if not exist "%drive%" mkdir %drive%
cd /d %drive%
call %MVN% archetype:generate -DarchetypeCatalog=local
pause
