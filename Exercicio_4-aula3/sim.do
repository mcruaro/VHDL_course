vlib work
vmap work work

#Compila o arquivo
vcom -work work exe_4.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.exe_4

do wave.do

force -freeze sim:/exe_4/in1 1 0
force -freeze sim:/exe_4/in2 0 0
force -freeze sim:/exe_4/in3 0 0

run 1ms