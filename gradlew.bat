@echo off
setlocal
set "ROOT=%~dp0"
set "GRADLE_VERSION=8.8"
set "BOOT_DIR=%ROOT%.gradle-bootstrap"
set "GRADLE_HOME=%BOOT_DIR%\gradle-%GRADLE_VERSION%"
set "GRADLE_EXE=%GRADLE_HOME%\bin\gradle.bat"
if not exist "%GRADLE_EXE%" (
  echo [Warhead] Downloading Gradle %GRADLE_VERSION% automatically...
  if not exist "%BOOT_DIR%" mkdir "%BOOT_DIR%"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "$ErrorActionPreference='Stop'; $zip=Join-Path '%BOOT_DIR%' 'gradle-%GRADLE_VERSION%-bin.zip'; Invoke-WebRequest -UseBasicParsing 'https://services.gradle.org/distributions/gradle-%GRADLE_VERSION%-bin.zip' -OutFile $zip; Expand-Archive -LiteralPath $zip -DestinationPath '%BOOT_DIR%' -Force; Remove-Item -LiteralPath $zip -Force"
  if errorlevel 1 (echo [ERROR] Could not download Gradle. Check internet access. & exit /b 1)
)
if not exist "%GRADLE_EXE%" (echo [ERROR] Gradle download did not produce gradle.bat.& exit /b 1)
"%GRADLE_EXE%" --no-daemon %*
exit /b %ERRORLEVEL%
