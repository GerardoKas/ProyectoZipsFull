@echo off
set ZIPDIR=D:
echo [unidad:\ruta\a\los\zip] o solo [unidad:]
set /P ZIPDIR=Escribe : 


set LISTTEMP=ListadoSimple.txt
REM set SALIDA=ListadoFullZips.txt

title Fase 0.0 Listando zips de: %ZIPDIR%

echo Preparados para hacer un Listado de Zips (tardara maximo 10 minutos dependiendo de la cantidad de ficheros)..
echo No vas a ver nada pero debes tener paciencia
echo.
echo ListaZips: %LISTTEMP%
REM echo ListaContenidos : %SALIDA%

if exist %LISTTEMP% (del %LISTTEMP%)
REM if exist % SALIDA% (del %SALIDA%)

dir /b/s "%ZIPDIR%\*.zip" >>"%LISTTEMP%"
dir /b/s "%ZIPDIR%\*.rar" >>"%LISTTEMP%"
dir /b/s "%ZIPDIR%\*.7z" >>"%LISTTEMP%" 

echo.
echo Ya estan listados los archivos.
echo.
echo Ahora hay que leer los contenidos en la Fase 0.1B - ListarNuevoos---
echo.
pause


