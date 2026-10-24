@echo off
cd /d "%~dp0"
if "%JAVA_HOME%"=="" (
  echo [Warhead] JAVA_HOME is not set. Make sure JDK 17 is installed and java -version reports 17.
)
call "%~dp0gradlew.bat" clean build
if errorlevel 1 (echo. & echo BUILD FAILED. Copy the first error from this window and send it for diagnosis. & pause & exit /b 1)
echo.
echo BUILD SUCCESS. Check build\libs for the JAR.
pause
