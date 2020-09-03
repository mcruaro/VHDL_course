vlib work
vmap work work

vcom -work work exe_9.vhd

vsim -novopt -t 1ns +notimingchecks work.exe_9

do wave.do

force -freeze sim:/exe_9/in1 1 0
force -freeze sim:/exe_9/in2 2 0
force -freeze sim:/exe_9/control 1 0
