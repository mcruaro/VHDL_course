#Cria a biblioteca work
vlib work
vmap work work

#Compila os dois modulos
vcom -work work exe_1.vhd

#Simula o arquivo testebench
vsim -novopt -t 1ns +notimingchecks work.exe_1

#Carrega os sinais na forma de onda
#add wave -noupdate /testbench/simple_example/a
#add wave -noupdate /testbench/simple_example/b
#add wave -noupdate /testbench/simple_example/o
radix hex

#Simula por 50 ns
run 50ns
