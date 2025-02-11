@echo off
REM Establece el directorio de MinGW (tu ruta personalizada)
set MINGW_DIR=C:\...\Dev\mingw64

REM Agrega MinGW a PATH temporalmente
set PATH=%MINGW_DIR%\bin;%PATH%

REM Confirma que el entorno está configurado
echo Configuración de MinGW completada. Compilador activo:
g++ --version

REM Abre un nuevo CMD con la configuración activa
cmd
