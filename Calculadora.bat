@echo off

:: Copyright (C) 2024 deboniet

:: This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or any later version.

:: This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

:: You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

::::::::::::::::::::::::::::::::::::::::::::::::::
:: Descripción del script: Una calculadora que permite realizar operaciones de dos operandos.
::::::::::::::::::::::::::::::::::::::::::::::::::
chcp 65001>nul
title Calculadora
:inicio
echo Bienvenido/a %username% a esta calculadora. El número que patrocina esta operación es %random%.
echo.
set var=0
echo 1. Suma.
echo 2. Resta.
echo 3. Multiplicación.
echo 4. División.
echo 5. Media.
echo 6. Salir.
echo.
set /p operacion="Introduce el número de la operación que quieres realizar y pulsa ENTER. --> "
if "%operacion%"=="0" goto invalido
if "%operacion%"=="1" goto suma
if "%operacion%"=="2" goto resta
if "%operacion%"=="3" goto multiplicacion
if "%operacion%"=="4" goto division
if "%operacion%"=="5" goto media
if "%operacion%"=="6" exit
if "%operacion%" GTR 6 goto invalido
:invalido
echo.
echo Selección inválida. Elige una de las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto inicio
:suma
cls
echo Vas a realizar una suma.
echo.
set /p numero1="Elige un número y pulsa ENTER --> "
set /p numero2="Elige otro número y pulsa ENTER --> "
set /a suma=%numero1% + %numero2%
if "%suma%"=="0" (goto idiota) else (goto resultadosuma)
:idiota
echo.
echo Sabes perfectamente el resultado.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
:resultadosuma
echo.
echo El resultado es %suma%.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
:resta
cls
echo Vas a realizar una resta.
echo.
set /p numero1="Elige un número y pulsa ENTER --> "
set /p numero2="Elige un número y pulsa ENTER --> "
set /a resta=%numero1% - %numero2%
echo.
echo El resultado es %resta%.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
:multiplicacion
cls
echo Vas a realizar una multiplicación.
echo.
set /p numero1="Elige un número y pulsa ENTER --> "
set /p numero2="Elige un número y pulsa ENTER --> "
set /a multiplicacion=%numero1% * %numero2%
if "%multiplicacion%"=="0" (goto idiota) else (goto resultadomulti)
:resultadomulti
echo.
echo El resultado es %multiplicacion%.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
:division
cls
echo Vas a realizar una división.
echo.
set /p numero1="Elige un número y pulsa ENTER --> "
set /p numero2="Elige un número y pulsa ENTER --> "
set /a division=%numero1% / %numero2%
echo.
echo El resultado es %division%.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
:media
cls
echo Vas a realizar la media entre dos números.
echo.
set /p numero1="Elige un número y pulsa ENTER --> "
set /p numero2="Elige un número y pulsa ENTER --> "
set /a media=(%numero1% + %numero2%)/2
echo.
echo La media de estos dos números es %media%.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
