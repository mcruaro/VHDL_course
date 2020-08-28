#Cria a biblioteca work
vlib work
vmap work work

#Compila os dois modulos
vcom -work work modulo.vhd
vcom -work work principal.vhd

#Simula o arquivo testebench
vsim -novopt -t 1ns +notimingchecks work.principal

do wave.do

force -freeze sim:/principal/in1 2 0

run 100ns