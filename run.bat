@echo off

if not exist testcases\NUL (
    mkdir testcases
    mkdir testcases\in
    mkdir testcases\out
    mkdir testcases\yours
    echo Please load the test cases in the relevant testcases folder and run this file again.

    pause
) else (
    echo Enter the location of the JSON to be tested, 
    echo e.g. "http://<url>/app/json"
    echo.
    set /p location="Location: "
    java -cp lib/* JSONChecker %location% > result.txt
    start result.txt
)

@echo on