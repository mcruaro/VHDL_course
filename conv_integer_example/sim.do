#Cria a biblioteca work
vlib work
vmap work work

#Compila os dois modulos
vcom -work work conv_integer_example.vhd

#Simula o arquivo testebench
vsim -novopt -t 1ns +notimingchecks work.testbench

#Carrega os sinais na forma de onda
#add wave -noupdate /testbench/simple_example/a
#add wave -noupdate /testbench/simple_example/b
#add wave -noupdate /testbench/simple_example/o
#radix hex

#Simula por 50 ns
#run 50ns
