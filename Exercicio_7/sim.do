#Cria a biblioteca work
vlib work
vmap work work

#Compila os dois modulos
vcom -work work exe_7.vhd
vcom -work work testbench.vhd


#Simula o arquivo testebench
vsim -t 1ns +notimingchecks work.testbench

do wave.do

