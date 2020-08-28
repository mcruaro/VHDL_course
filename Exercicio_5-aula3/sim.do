vlib work
vmap work work

#Compila o arquivo
vcom -work work exe_5.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.exe_5

do wave.do

force -freeze sim:/exe_5/in1 10 0
force -freeze sim:/exe_5/in2 20 0