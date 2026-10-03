@echo off
REM sim.bat - Simulacion rapida (LED cada ~0.8 us)
set PATH=C:\iverilog\bin;C:\iverilog\gtkwave\bin;%PATH%
cd /d D:\ADELSOFT\LATTICE\projects\bit_processor\sim
echo Carpeta: %CD%

echo === Compilando ===
iverilog -o sim.out tb_top.v osch_sim.v ..\top.v ..\led_blink.v
if errorlevel 1 goto fin

echo === Simulando ===
vvp sim.out
if errorlevel 1 goto fin

echo === Abriendo GTKWave ===
start "" gtkwave test.vcd

:fin
pause
