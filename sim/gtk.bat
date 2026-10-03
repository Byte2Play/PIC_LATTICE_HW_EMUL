@echo off
REM gtk.bat - Abre las senales del CPU en GTKWave
set PATH=C:\iverilog\bin;C:\iverilog\gtkwave\bin;%PATH%
cd /d D:\ADELSOFT\LATTICE\projects\bit_processor\sim
start "" gtkwave test_cpu.vcd
