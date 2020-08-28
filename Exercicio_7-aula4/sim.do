vlib work
vmap work work

#Compila o arquivo
vcom -work work exe_7.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.exe_7

do wave.do

force -freeze sim:/exe_7/in1 D 0