@echo off
title %0

java -jar "C:\ProyectoZips\dist\CompararArchivos.jar" "C:\ProyectoZips\ListadoRepositorio.txt" "C:\ProyectoZips\ListadoSimple.txt" "C:\ProyectoZips\ListadoNuevos.txt"

if %ERRORLEVEL% == 0 (
	echo finalizado correctamente
	echo Borrando "ListadoSimple.txt"
	del "ListadoSimple.txt"
)
echo ERROR %ERRORLEVEL% 
echo Fin del Programa %0
pause