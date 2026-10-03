@echo off
REM sim_cpu.bat - Simula el CPU (top + pc + mem + clk_div + decoder)
REM Ajusta los nombres de archivo si los tuyos son distintos.
set PATH=C:\iverilog\bin;C:\iverilog\gtkwave\bin;%PATH%
cd /d D:\ADELSOFT\LATTICE\projects\bit_processor\sim
echo Carpeta: %CD%

echo === Decoder ===
iverilog -o tb_decoder.out tb_decoder.v ..\decoder.v
if errorlevel 1 goto fin
vvp tb_decoder.out

echo === CPU ===
iverilog -o tb_cpu.out tb_cpu_top.v osch_sim.v ..\top.v ..\pc.v ..\mem.v ..\clk.v ..\decoder.v
if errorlevel 1 goto fin
vvp tb_cpu.out
if errorlevel 1 goto fin

echo === Abriendo GTKWave ===
start "" gtkwave test_cpu.vcd

:fin
pause
