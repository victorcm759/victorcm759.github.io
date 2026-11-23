@echo off
rem Servidor local con PHP para ver la web (incluida sports/index.php).
rem Abre http://localhost:8000 en el navegador. Ctrl+C para pararlo.

set "PHPDIR=%LOCALAPPDATA%\Microsoft\WinGet\Packages\PHP.PHP.8.6_Microsoft.Winget.Source_8wekyb3d8bbwe"

cd /d "%~dp0"
echo Servidor en http://localhost:8000
"%PHPDIR%\php.exe" ^
    -d extension_dir="%PHPDIR%\ext" ^
    -d extension=pdo_pgsql ^
    -d extension=openssl ^
    -d extension=curl ^
    -d extension=mbstring ^
    -S localhost:8000
