vlib work
vmap work work

#Compila o arquivo modulo
vcom -work work modulo.vhd
vcom -work work principal.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.principal


run 1ms