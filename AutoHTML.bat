@echo off

:: Copyright (C) 2024 deboniet

:: This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or any later version.

:: This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

:: You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

::::::::::::::::::::::::::::::::::::::::::::::::::
:: Descripción del script: Un creador automatizado, muy básico, de documentos HTML.
::::::::::::::::::::::::::::::::::::::::::::::::::
chcp 65001>nul
title AutoHTML
:inicio
cls
echo Bienvenido/a %username%, a este creador automatizado de documentos HTML.
echo.
set var=0
echo 1. Quiero crear un documento HTML ahora mismo.
echo 2. No quiero crear un documento HTML.
echo.
set /p eleccion="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%eleccion%"=="0" goto invalido
if "%eleccion%"=="1" goto hacerhtml
if "%eleccion%"=="2" exit
if "%eleccion%" GTR 2 goto invalido
:invalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto inicio
:hacerhtml
echo.
md C:\Users\%username%\AppData\Local\Temp\AutoHTML\ 2>nul
echo ^<!--Creado el %date% a las %time% por %username%.--^>^<html^>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
set /p title="Escribe el título que aparecerá en la pestaña del navegador y pulsa ENTER. (dejalo en blanco si no quieres ningún título) --> "
echo ^<head^>^<title^>%title%^</title^>^</head^>^<body^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto hsize
:hsize
cls
echo ¿De qué tamaño te gustaría ver la cabecera?
echo.
echo 1. Tamaño 1.
echo 2. Tamaño 2.
echo 3. Tamaño 3.
echo 4. Tamaño 4.
echo 5. Tamaño 5.
echo 6. Tamaño 6.
echo 7. No quiero poner más cabeceras.
echo.
set /p tamaño="Escribe el número del tamaño de tu cabecera y pulsa ENTER. --> "
if "%tamaño%"=="0" goto hinvalido
if "%tamaño%"=="1" goto h1
if "%tamaño%"=="2" goto h2
if "%tamaño%"=="3" goto h3
if "%tamaño%"=="4" goto h4
if "%tamaño%"=="5" goto h5
if "%tamaño%"=="6" goto h6
if "%tamaño%"=="7" goto p
if "%tamaño%" GTR 7 goto hinvalido
:hinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto hsize
:h1
echo.
set /p h1="Escribe lo que quieres poner en la cabecera y pulsa ENTER. --> "
echo ^<h1^>%h1%^</h1^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto mash
:h2
echo.
set /p h2="Escribe lo que quieres poner en la cabecera y pulsa ENTER. --> "
echo ^<h2^>%h2%^</h2^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto mash
:h3
echo.
set /p h3="Escribe lo que quieres poner en la cabecera y pulsa ENTER. --> "
echo ^<h3^>%h3%^</h3^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto mash
:h4
echo.
set /p h4="Escribe lo que quieres poner en la cabecera y pulsa ENTER. --> "
echo ^<h4^>%h4%^</h4^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto mash
:h5
echo.
set /p h5="Escribe lo que quieres poner en la cabecera y pulsa ENTER. --> "
echo ^<h5^>%h5%^</h5^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto mash
:h6
echo.
set /p h6="Escribe lo que quieres poner en la cabecera y pulsa ENTER. --> "
echo ^<h6^>%h6%^</h6^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto mash
:mash
echo.
echo ¿Quieres poner más cabeceras?
echo.
echo 1. Sí, quiero poner más cabeceras.
echo 2. No, no quiero poner más cabeceras.
echo.
set /p masp="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%masp%"=="0" goto mashinvalido
if "%masp%"=="1" goto hsize
if "%masp%"=="2" goto p
if "%masp%" GTR 2 goto mashinvalido
:mashinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto mash
:p
cls
echo ¿Cómo te gustaría ver los párrafos?
echo.
echo 1. Normal.
echo 2. Negrita.
echo 3. Cursiva.
echo 4. Subrayado.
echo 5. Marcado.
echo 6. No quiero poner más párrafos.
echo.
set /p p="Escribe el número del tipo de párrafo que quieres añadir y pulsa ENTER. --> "
if "%p%"=="0" goto pinvalido
if "%p%"=="1" goto pnormal
if "%p%"=="2" goto pbold
if "%p%"=="3" goto pitalic
if "%p%"=="4" goto psubrayado
if "%p%"=="5" goto pdeleted
if "%p%"=="6" goto url
if "%p%" GTR 6 goto pinvalido
:pinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto p
:pnormal
echo.
set /p pnormal="Escribe el párrafo que quieres poner y pulsa ENTER. --> "
echo ^<p^>%pnormal%^</p^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto maspnormal
:maspnormal
echo.
echo ¿Quieres poner más párrafos?
echo.
echo 1. Sí, quiero poner más párrafos.
echo 2. No, no quiero poner más párrafos.
echo.
set /p maspnormal="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%maspnormal%"=="0" goto pnormalinvalido
if "%maspnormal%"=="1" goto p
if "%maspnormal%"=="2" goto url
if "%maspnormal%" GTR 2 goto pnormalinvalido
:pnormalinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto maspnormal
:pbold
echo.
set /p pbold="Escribe el párrafo que quieres poner y pulsa ENTER. --> "
echo ^<b^>^<p^>%pbold%^</p^>^</b^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto maspbold
:maspbold
echo.
echo ¿Quieres poner más párrafos?
echo.
echo 1. Sí, quiero poner más párrafos.
echo 2. No, no quiero poner más párrafos.
echo.
set /p maspbold="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%maspbold%"=="0" goto pboldinvalido
if "%maspbold%"=="1" goto p
if "%maspbold%"=="2" goto url
if "%maspbold%" GTR 2 goto pboldinvalido
:pboldinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto maspbold
:pitalic
echo.
set /p pitalic="Escribe el párrafo que quieres poner y pulsa ENTER. --> "
echo ^<i^>^<p^>%pitalic%^</p^>^</i^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto maspitalic
:maspitalic
echo.
echo ¿Quieres poner más párrafos?
echo.
echo 1. Sí, quiero poner más párrafos.
echo 2. No, no quiero poner más párrafos.
echo.
set /p maspitalic="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%maspitalic%"=="0" goto pitalicinvalido
if "%maspitalic%"=="1" goto p
if "%maspitalic%"=="2" goto url
if "%maspitalic%" GTR 2 goto pitalicinvalido
:pitalicinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto maspitalic
:psubrayado
echo.
set /p psubrayado="Escribe el párrafo que quieres poner y pulsa ENTER. --> "
echo ^<ins^>^<p^>%psubrayado%^</p^>^</ins^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto maspsubrayado
:maspsubrayado
echo.
echo ¿Quieres poner más párrafos?
echo.
echo 1. Sí, quiero poner más párrafos.
echo 2. No, no quiero poner más párrafos.
echo.
set /p maspsubrayado="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%maspsubrayado%"=="0" goto psubrayadoinvalido
if "%maspsubrayado%"=="1" goto p
if "%maspsubrayado%"=="2" goto url
if "%maspsubrayado%" GTR 2 goto psubrayadoinvalido
:psubrayadoinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto maspsubrayado
:pdeleted
echo.
set /p pdeleted="Escribe el párrafo que quieres poner y pulsa ENTER. --> "
echo ^<del^>^<p^>%pdeleted%^</p^>^</del^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto maspdeleted
:maspdeleted
echo.
echo ¿Quieres poner más parrafos?
echo.
echo 1. Sí, quiero poner más párrafos.
echo 2. No, no quiero poner más párrafos.
echo.
set /p maspdeleted="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%maspdeleted%"=="0" goto pdeletedinvalido
if "%maspdeleted%"=="1" goto p
if "%maspdeleted%"=="2" goto url
if "%maspdeleted%" GTR 2 goto pdeletedinvalido
:pdeletedinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto maspdeleted
:url
cls
echo ¿Quieres poner hiperenlaces?
echo.
echo 1. Sí, quiero poner hiperenlaces.
echo 2. No, no quiero poner hiperenlaces.
echo.
set /p url="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%url%"=="0" goto urlinvalido
if "%url%"=="1" goto ponerurl
if "%url%"=="2" goto nombre
if "%url%" GTR 2 goto urlinvalido
:urlinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto url
:ponerurl
echo.
echo Por ejemplo: "https://www.google.es"
echo.
set /p url="Escribe el hiperenlace que quieres poner, con http:// o https:// al principio y con comillas ("") al principio y final, y pulsa ENTER. --> "
goto ponertextourl
:ponertextourl
echo.
echo ¿Quieres poner texto que identifique el hiperenlace?
echo.
echo 1. Sí, quiero poner texto que identifique el hiperenlace.
echo 2. No, no quiero poner texto que identifique el hiperenlace.
echo.
set /p ponertextourl="Escribe el número de la acción que quieres realizar y pulsa ENTER. --> "
if "%ponertextourl%"=="0" goto ponermasurlinvalido
if "%ponertextourl%"=="1" goto ponertexto
if "%ponertextourl%"=="2" goto noponertexto
if "%ponertextourl%" GTR 2 goto ponermasurlinvalido
:ponermasurlinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto ponertextourl
:ponertexto
echo.
set /p textourl="Escribe el texto que quieres añadir al hiperenlace y pulsa ENTER. --> "
echo ^<a href=%url%^>%textourl%^</a^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto nombre
:noponertexto
echo ^<a href=%url%^>^</a^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
goto nombre
:nombre
echo ^</body^>>>C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html
cls
set /p nombre="Escribe el nombre que te gustaría que tuviera el fichero y pulsa ENTER. --> "
ren C:\Users\%username%\AppData\Local\Temp\AutoHTML\temp.html %nombre%.html
move C:\Users\%username%\AppData\Local\Temp\AutoHTML\%nombre%.html C:\Users\%username%\Desktop>nul
echo.
echo El archivo se ha movido al Escritorio. Pulsa cualquier tecla para volver al inicio.
pause>nul
goto inicio
