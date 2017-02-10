@echo off

set dirClasses=classes

if not exist %dirClasses%\NUL mkdir %dirClasses%
javac -d %dirClasses% -classpath lib/* src/*.java
jar -cvf lib/JSONChecker.jar -C %dirClasses% .

@echo on
pause