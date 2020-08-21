#Cria a biblioteca work
vlib work
vmap work work

#Compila os dois modulos
vcom -work work exe_2.vhd

#Simula o arquivo testebench
vsim -novopt -t 1ns +notimingchecks work.exe_2

#Carrega os sinais na forma de onda
add wave -position end  sim:/exe_2/a
add wave -position end  sim:/exe_2/b
add wave -position end  sim:/exe_2/c
add wave -position end  sim:/exe_2/d
add wave -position end  sim:/exe_2/s1
add wave -position end  sim:/exe_2/s2
add wave -position end  sim:/exe_2/s3
radix hex

force -freeze sim:/exe_2/a 1 0
force -freeze sim:/exe_2/b 0 0
force -freeze sim:/exe_2/c 0 0
force -freeze sim:/exe_2/d 1 0

#Simula por 50 ns
run 50ns
