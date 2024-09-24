@echo off

net stop windefend

set root_dir=%cd%
set java_home=%root_dir%\jdk-17.0.12
set path=%java_home%\bin;%path%
set b=start javaw.exe -Dfile.encoding=UTF-8 -classpath %root_dir%\bin;%root_dir%\starter.jar

for /r .\lib %%i in (*.jar) do (
call set b=%%b%%;%%i
)

set b=%b% starter.main.Loader

%b%
