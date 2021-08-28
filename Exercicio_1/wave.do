onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Entrada /testbench/exe_1/in1
add wave -noupdate -expand -group Entrada /testbench/exe_1/in2
add wave -noupdate -expand -group Entrada /testbench/exe_1/in3
add wave -noupdate -expand -group Saida /testbench/exe_1/o1
add wave -noupdate -expand -group Saida /testbench/exe_1/o2
add wave -noupdate -expand -group Sinais_Internos /testbench/exe_1/c
add wave -noupdate -expand -group Sinais_Internos /testbench/exe_1/d
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
