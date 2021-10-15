onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/exe_12/a
add wave -noupdate /testbench/exe_12/b
add wave -noupdate /testbench/exe_12/c
add wave -noupdate /testbench/exe_12/in1
add wave -noupdate /testbench/exe_12/in2
add wave -noupdate /testbench/exe_12/sel
add wave -noupdate /testbench/exe_12/out1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13 ns} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ns} {525 ns}
