@echo off

:: Copyright (C) 2024 deboniet

:: This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or any later version.

:: This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

:: You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

::::::::::::::::::::::::::::::::::::::::::::::::::
:: Descripción del script: Configurar el firewall de Windows para jugar a GTA Online, de manera que se evite que otros jugadores puedan deducir la IP pública desde donde se está jugando y así evitar ataques de denegación de servicio.
:: Requisitos previos: Tener el juego comprado en Steam.
:: NOTA: Bloquear los puertos que usa GTA V para P2P implica que se jugará en sesiones públicas vacías. El usar este métódo de bloqueo no implica que los atacantes no utilicen vulnerabilidades en Social Club para expulsarte de la sesión o hacer otro tipo de ataques.
::::::::::::::::::::::::::::::::::::::::::::::::::
chcp 65001>nul
title GTA Online Peer to Peer
:inicio
color 07
set var=0
echo 1. Habilitar P2P e iniciar GTA V.
echo 2. Deshabilitar P2P e iniciar GTA V.
echo 3. Habilitar P2P.
echo 4. Deshabilitar P2P.
echo 5. Crear regla en el Firewall.
echo 6. Introducir direcciones IP a la regla.
echo 7. Salir.
echo.
set /p p2p="Selecciona una opción y pulsa ENTER. --> "
if "%p2p%"=="0" goto invalido
if "%p2p%"=="1" goto 1
if "%p2p%"=="2" goto 2
if "%p2p%"=="3" goto 3
if "%p2p%"=="4" goto 4
if "%p2p%"=="5" goto 5
if "%p2p%"=="6" goto 6
if "%p2p%"=="7" exit
if "%p2p%" GTR 7 goto invalido
:invalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto inicio
:1
cls
netsh advfirewall firewall set rule name="GTA Online P2P" new enable=no>nul
color 0a
echo P2P habilitado.
echo Iniciando GTA V...
start steam://rungameid/271590
timeout /t 15
exit
:2
cls
netsh advfirewall firewall set rule name="GTA Online P2P" new enable=yes>nul
color 0c
echo P2P deshabilitado.
echo Iniciando GTA V...
start steam://rungameid/271590
timeout /t 15
exit
:3
cls
netsh advfirewall firewall set rule name="GTA Online P2P" new enable=no>nul
color 0a
echo P2P habilitado.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
:4
cls
netsh advfirewall firewall set rule name="GTA Online P2P" new enable=yes>nul
color 0c
echo P2P deshabilitado.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
:5
cls
netsh advfirewall firewall add rule name="GTA Online P2P" description="Regla para las conexiones P2P en GTA Online." dir=out enable=yes action=block program="C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe" protocol=udp localport=6672,61455-61458 remoteport=6672,61455-61458>nul
echo Regla creada en el Firewall.
echo.
echo Pulsa cualquier tecla para volver al menú de inicio.
pause>nul
cls
goto inicio
:6
cls
echo 1. Introducir direcciones IP públicas.
echo 2. Introducir direcciones IP privadas.
echo 3. Desactivar y eliminar filtro de direcciones IP públicas.
echo 4. Desactivar y eliminar filtro de direcciones IP privadas.
echo 5. Volver al menú de inicio.
echo 6. Salir.
echo.
echo Nota: Para direcciones IP con máscara de red variable, se necesita poner notación en barra, por ejemplo: 192.168.1.10/25.
echo.
set /p ipmenu="Selecciona una opción y pulsa ENTER. --> "
if "%ipmenu%"=="0" goto ipmenuinvalido
if "%ipmenu%"=="1" goto ip1
if "%ipmenu%"=="2" goto ip2
if "%ipmenu%"=="3" goto ip3
if "%ipmenu%"=="4" goto ip4
if "%ipmenu%"=="5" cls&&goto inicio
if "%ipmenu%"=="6" goto exit
if "%ipmenu%" GTR 6 goto ipmenuinvalido
:ipmenuinvalido
echo.
echo Selección inválida. Elige entre las opciones disponibles.
echo.
echo Pulsa cualquier tecla para volver a seleccionar una opción.
pause>nul
cls
goto 6
:ip1
cls
set /p publica="Introduce la dirección IP pública y pulsa ENTER. --> "
cls
netsh advfirewall firewall set rule name="GTA Online P2P" new remoteip=%publica%>nul
echo Se ha añadido la dirección pública %publica% a la lista de excepciones.
echo.
echo Pulsa cualquier tecla para volver al menú de direcciones IP.
pause>nul
cls
goto 6
:ip2
cls
set /p privada="Introduce la dirección IP privada y pulsa ENTER. --> "
cls
netsh advfirewall firewall set rule name="GTA Online P2P" new localip=%privada%>nul
echo Se ha añadido la dirección privada %privada% a la lista de excepciones.
echo.
echo Pulsa cualquier tecla para volver al menú de direcciones IP.
pause>nul
cls
goto 6
:ip3
cls
netsh advfirewall firewall set rule name="GTA Online P2P" new remoteip=any>nul
echo Se ha desactivado el filtro de direcciones de IP públicas y se han eliminado las direcciones agregadas.
echo.
echo Pulsa cualquier tecla para volver al menú de direcciones IP.
pause>nul
cls
goto 6
:ip4
cls
netsh advfirewall firewall set rule name="GTA Online P2P" new localip=any>nul
echo Se ha desactivado el filtro de direcciones de IP privadas y se han eliminado las direcciones agregadas.
echo.
echo Pulsa cualquier tecla para volver al menú de direcciones IP.
pause>nul
cls
goto 6
