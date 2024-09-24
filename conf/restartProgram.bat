@echo off


set root_dir=%2
cd %root_dir%
rem taskkill /F /PID %1


set b=start javaw.exe -Dfile.encoding=UTF-8 -classpath %root_dir%\bin

for /r .\lib %%i in (*.jar) do (
call set b=%%b%%;%%i
)

set b=%b% css.main.Login
echo %b% > d:\a.txt

%b%

rem start javaw.exe -Dfile.encoding=UTF-8 -classpath %root_dir%\bin;%root_dir%\lib\fastjson2-2.0.33.jar;%root_dir%\lib\jxbrowser-7.30.2.jar;%root_dir%\lib\jxbrowser-swing-7.30.2.jar;%root_dir%\lib\jxbrowser-win64-7.30.2.jar;%root_dir%\lib\sqlite-jdbc-3.32.3.3.jar;%root_dir%\lib\jna\jna-5.13.0.jar;%root_dir%\lib\jna\jna-platform-5.13.0.jar;%root_dir%\lib\jna\oshi-core-6.4.3.jar;%root_dir%\lib\jna\slf4j-api-1.7.30.jar css.main.Login
exit

