#Cria a biblioteca work
vlib work
vmap work work

#Compila os dois modulos
vcom -work work exe_1.vhd

#Simula o arquivo testebench
vsim -novopt -t 1ns +notimingchecks work.exe_1

