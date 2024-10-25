@echo off

set LISTTEMP=ListadoNuevos.txt
set SALIDA=ListadoFullZips.txt
echo Procesando zips y obteniendo los contenidos
echo.
title Fase 0.1 - OBTENER DATOS DE ZIPS

 for /F "tokens=*" %%I in (%LISTTEMP%) do (
	 echo NOMBRE:%%I
	"C:\Program Files\7-Zip\7z.exe" l -sccWIN -- "%%I" >>%SALIDA%
)
cls
echo.
echo Listo. Se han registrado los contenidos de los zips creados en la Fase 0.0
echo Ahora abre el proyecto AgregarDatosAlaBD y que lea el archivo de datos en: %SALIDA%
echo.
pause


