vlib work
vmap work work

#Compila o arquivo
vcom -work work exe_6.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.exe_6

do wave.do

force -freeze sim:/exe_6/address F00F1010 0