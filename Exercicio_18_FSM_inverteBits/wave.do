onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/exe_18/clock
add wave -noupdate /testbench/exe_18/reset
add wave -noupdate /testbench/exe_18/in1
add wave -noupdate /testbench/exe_18/out1
add wave -noupdate /testbench/exe_18/ready
add wave -noupdate /testbench/exe_18/FSM
add wave -noupdate /testbench/exe_18/index
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 143
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
WaveRestoreZoom {0 ns} {105 ns}
