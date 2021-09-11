onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/exe_5/in1
add wave -noupdate /testbench/exe_5/out1
add wave -noupdate /testbench/exe_5/out2
add wave -noupdate -color Yellow /testbench/exe_5/out3
add wave -noupdate /testbench/exe_5/ENABLED
add wave -noupdate /testbench/exe_5/BUS_S
add wave -noupdate /testbench/exe_5/INDEX
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {46 ns} 0}
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
WaveRestoreZoom {0 ns} {248 ns}
