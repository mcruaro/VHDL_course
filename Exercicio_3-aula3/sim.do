#Cria a biblioteca work
vlib work
vmap work work

#Compila os dois modulos
vcom -work work exe_3.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.exe_3

run 100ns
