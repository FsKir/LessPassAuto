@echo off
set LESSPASS_MASTER_PASSWORD=
set called=0
echo.
if %called% equ 0 (
	set /p site=site: 
	set /p login=login:
) else (
	set site=%1
	set login=%2
)
echo.
lesspass %site% %login% -L32 -luds -C1 -c>nul
lesspass %site% %login% -L32 -luds -C1