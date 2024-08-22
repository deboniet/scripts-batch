@echo off

:: Copyright (C) 2024 deboniet

:: This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or any later version.

:: This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

:: You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

::::::::::::::::::::::::::::::::::::::::::::::::::
:: Descripción del script: Ejecutar el navegador y el motor de búsqueda deseados para realizar una búsqueda en Internet.
:: NOTA: Las búsquedas se realizan con subdominios españoles. Los resultados podrían variar de los de tu país de origen.
::::::::::::::::::::::::::::::::::::::::::::::::::
chcp 65001>nul
title Motor de búsqueda
:inicio
cls
echo Hola %username%, ¿Con qué navegador quieres realizar tu búsqueda?
echo.
set var=0
echo 1. Google Chrome.
echo 2. Mozilla Firefox.
echo 3. No encuentro mi navegador.
echo 4. Salir.
echo.
set /p navegador="Selecciona el número del navegador con el que quieres realizar tu búsqueda y pulsa ENTER. --> "
if "%navegador%"=="0" goto invalido
if "%navegador%"=="1" goto chrome
if "%navegador%"=="2" goto firefox
if "%navegador%"=="3" goto desaparecido
if "%navegador%"=="4" exit
if "%navegador%" GTR 4 goto invalido
:invalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto inicio
:chrome
cls
echo Vas a utilizar Google Chrome como navegador de búsqueda.
echo.
echo 1. Google.
echo 2. Bing.
echo 3. Yahoo.
echo.
echo Escribe "atras" para volver al menú de inicio.
echo.
set /p buscador="Escribe el número del motor de búsqueda con el que quieres hacer tu consulta y pulsa ENTER. --> "
if "%buscador%"=="1" goto google1
if "%buscador%"=="2" goto bing1
if "%buscador%"=="3" goto yahoo1
if "%buscador%"=="atras" goto inicio
cls
:google1
cls
echo Vas a buscar en Google con Google Chrome.
echo.
echo Escribe "atras" para volver al menú de motores de búsqueda.
echo.
set /p busqueda="Escribe lo que quieres buscar y pulsa ENTER. --> "
if "%busqueda%"=="atras" goto chrome
start chrome.exe https://www.google.es/search?q=%busqueda%
cls
goto inicio
:bing1
cls
echo Vas a buscar en Bing con Google Chrome.
echo.
echo Escribe "atras" para volver al menú de motores de búsqueda.
echo.
set /p busqueda="Escribe lo que quieres buscar y pulsa ENTER. --> "
if "%busqueda%"=="atras" goto chrome
start chrome.exe https://www.bing.es/results.aspx?q=%busqueda%
cls
goto inicio
:yahoo1
cls
echo Vas a buscar en Yahoo con Google Chrome.
echo.
echo Escribe "atras" para volver al menú de motores de búsqueda.
echo.
set /p busqueda="Escribe lo que quieres buscar y pulsa ENTER. --> "
if "%busqueda%"=="atras" goto chrome
start chrome.exe https://es.search.yahoo.com/search?p=%busqueda%
cls
goto inicio
:firefox
cls
echo Vas a utilizar Mozilla Firefox como navegador de búsqueda.
echo.
echo 1. Google.
echo 2. Bing.
echo 3. Yahoo.
echo.
echo Escribe "atras" para volver al menú de inicio.
echo.
set /p buscador="Escribe el número del motor de búsqueda con el que quieres hacer tu consulta y pulsa ENTER. --> "
if "%buscador%"=="1" goto google2
if "%buscador%"=="2" goto bing2
if "%buscador%"=="3" goto yahoo2
if "%buscador%"=="atras" goto inicio
:google2
cls
echo Vas a buscar en Google con Mozilla Firefox.
echo.
echo Escribe "atras" para volver al menú de motores de búsqueda.
echo.
set /p busqueda="Escribe lo que quieres buscar y pulsa ENTER. --> "
if "%busqueda%"=="atras" goto firefox
start firefox.exe https://www.google.es/search?q=%busqueda%
cls
goto inicio
:bing2
cls
echo Vas a buscar en Bing con Mozilla Firefox.
echo.
echo Escribe "atras" para volver al menú de motores de búsqueda.
echo.
set /p busqueda="Escribe lo que quieres buscar y pulsa ENTER. --> "
if "%busqueda%"=="atras" goto firefox
start firefox.exe https://www.bing.es/results.aspx?q=%busqueda%
cls
goto inicio
:yahoo2
cls
echo Vas a buscar en Yahoo con Mozilla Firefox.
echo.
echo Escribe "atras" para volver al menú de motores de búsqueda.
echo.
set /p busqueda="Escribe lo que quieres buscar y pulsa ENTER. --> "
if "%busqueda%"=="atras" goto firefox
start firefox.exe https://es.search.yahoo.com/search?p=%busqueda%
cls
goto inicio
:desaparecido
cls
set /p otro="Si quieres buscarlo en el ordenador escribe a continuación Si (recomendado solo si tienes experiencia con la línea de comandos), o No, si quieres volver al menú principal. Recuerda ejecutar el fichero. --> "
echo.
if "%otro%"=="Si" goto dir
if "%otro%"=="No" goto inicio
:dir
start cmd /k chdir C:\
cls
exit
