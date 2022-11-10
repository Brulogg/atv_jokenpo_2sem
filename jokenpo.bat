@echo off
title PEDRA - PAPEL - TESOURA - LAGARTO - SPOCK
mode 60, 35
color 0a
set /a v=0
set /a d=0
set /a e=0
set /p nome=DIGITE SEU NOME PARA INICIAR: 
goto:inicio
:inicio
set /a m=(%random% %% 5) + 1
cls
echo ===========================================================
echo 		         BEM-VINDO AO JO-KEN-PO
echo ===========================================================
echo OLA %nome%
echo [1]PEDRA
echo [2]PAPEL
echo [3]TESOURA
echo [4]LAGARTO
echo [5]SPOCK
echo [E]NCERRAR O JOGO
echo [R]EGRAS
echo ===========================================================
echo 				        PLACAR
echo Vitorias: %v%
echo Derrotas: %d%
echo Empates:  %e%
echo ===========================================================
set /p humano=Escolha ums opcao:

if %humano%==1 (
set /a h=1
goto:jogo)

if %humano%==2 (
set /a h=2
goto:jogo)

if %humano%==3 (
set /a h=3
goto:jogo)

if %humano%==4 (
set /a h=4
goto:jogo)

if %humano%==5 (
set /a h=5
goto:jogo)

if /I %humano%==r (
goto:regras)

if /I %humano%==e (
exit) else (
    echo.
    echo ------------------------------------
    echo           Opcao invalida!
    echo ------------------------------------
    pause > null
    goto:inicio)
:regras
echo ===========================================================
echo 		   		         REGRAS
echo ===========================================================
echo PEDRA: 
echo EMPATA COM PEDRA, GANHA DA TESOURA E DO LAGARTO, PERDE PARA O SPOCK E O PAPEL
echo.
echo PAPEL: 
echo EMPATA COM PAPEL, GANHA DA PEDRA E DO SPOCK, PERDE PARA A TESOURA E O LAGARTO
echo.
echo TESOURA: 
echo EMPATA COM TESOURA, GANHA DO LAGARTO E DO PAPEL, PERDE PARA A PEDRA E O SPOCK
echo.
echo LAGARTO: 
echo EMPATA COM LAGARTO, GANHA DO ESPOCK E DO PAPEL, PERDE PARA A PEDRA E A TESOURA
echo.
echo SPOCK: 
echo EMPATA COM SPOCK, GANHA DA PEDRA E DA TESOURA, PERDE PARA O PAPEL E O LAGARTO
echo.
set /p resp=DESEJA JOGAR?[S/N]
if /I %resp%==S (
goto:inicio)
if /I %resp%==N (exit)

:novamente 
set /p op=DESEJA JOGAR NOVAMENTE?[S/N]
if /I %op%==s (goto:inicio)
if /I %op%==e (
exit) else (
    echo.
    echo ------------------------------------
    echo           Opcao invalida!
    echo ------------------------------------
    pause > null
    goto:novamente)

:jogo

if %h%==1 (
if %m%==1 (
echo %nome% escolheu: PEDRA
echo maquina escolheu: PEDRA
echo Empate!
set /a e=%e%+1
pause>nul
goto:novamente
)
)

if %h%==2 (
if %m%==2 (
echo %nome% escolheu: PAPEL
echo maquina escolheu: PAPEL
echo Empate!
set /a e=%e%+1
pause>nul
goto:novamente
)
)

if %h%==3 (
if %m%==3 (
echo %nome% escolheu: TESOURA
echo maquina escolheu: TESOURA
echo Empate!
set /a e=%e%+1
pause>nul
goto:novamente
)
)

if %h%==4 (
if %m%==4 (
echo %nome% escolheu: LAGARTO
echo maquina escolheu: LAGARTO
echo Empate!
set /a e=%e%+1
pause>nul
goto:novamente
)
)

if %h%==5 (
if %m%==5 (
echo %nome% escolheu: SPOCK
echo maquina escolheu: SPOCK
echo Empate!
set /a e=%e%+1
pause>nul
goto:novamente
)
)

rem V e D Pedra

if %h%==1 (
if %m%==2 (
echo %nome% escolheu: PEDRA
echo maquina escolheu: PAPEL
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

if %h%==1 (
if %m%==3 (
echo %nome% escolheu: PEDRA
echo maquina escolheu: TESOURA
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

if %h%==1 (
if %m%==4 (
echo %nome% escolheu: PEDRA
echo maquina escolheu: LAGARTO
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

if %h%==1 (
if %m%==5 (
echo %nome% escolheu: PEDRA
echo maquina escolheu: SPOCK
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

rem V e D Papel

if %h%==2 (
if %m%==1 (
echo %nome% escolheu: PAPEL
echo maquina escolheu: PEDRA
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

if %h%==2 (
if %m%==3 (
echo %nome% escolheu: PAPEL
echo maquina escolheu: TESOURA
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

if %h%==2 (
if %m%==4 (
echo %nome% escolheu:  PAPEL
echo maquina escolheu: LAGARTO
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

if %h%==2 (
if %m%==5 (
echo %nome% escolheu:  PAPEL
echo maquina escolheu: SPOCK
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

rem V e D Tesoura

if %h%==3 (
if %m%==1 (
echo %nome% escolheu:  TESOURA
echo maquina escolheu: PEDRA
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

if %h%==3 (
if %m%==2 (
echo %nome% escolheu:  TESOURA
echo maquina escolheu: PAPEL
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

if %h%==3 (
if %m%==4 (
echo %nome% escolheu:  TESOURA
echo maquina escolheu: LAGARTO
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

if %h%==3 (
if %m%==5 (
echo %nome% escolheu:  TESOURA
echo maquina escolheu: SPOCK
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

rem V e D Lagarto

if %h%==4 (
if %m%==1 (
echo %nome% escolheu:  LAGARTO
echo maquina escolheu: PEDRA
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

if %h%==4 (
if %m%==2 (
echo %nome% escolheu:  LAGARTO
echo maquina escolheu: PAPEL
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

if %h%==4 (
if %m%==3 (
echo %nome% escolheu:  LAGARTO
echo maquina escolheu: TESOURA
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

if %h%==4 (
if %m%==5 (
echo %nome% escolheu:  LAGARTO
echo maquina escolheu: SPOCK
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

rem V e D Spock

if %h%==5 (
if %m%==1 (
echo %nome% escolheu:  SPOCK 
echo maquina escolheu: PEDRA
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

if %h%==5 (
if %m%==2 (
echo %nome% escolheu:  SPOCK 
echo maquina escolheu: PAPEL
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)

if %h%==5 (
if %m%==3 (
echo %nome% escolheu:  SPOCK 
echo maquina escolheu: TESOURA
echo Ganhou!
set /a v=%v%+1
pause>nul
goto:novamente
)
)

if %h%==5 (
if %m%==4 (
echo %nome% escolheu:  SPOCK 
echo maquina escolheu: LAGARTO
echo Perdeu!
set /a d=%d%+1
pause>nul
goto:novamente
)
)