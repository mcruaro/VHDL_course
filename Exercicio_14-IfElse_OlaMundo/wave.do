onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/exe_14/clock
add wave -noupdate /testbench/exe_14/reset
add wave -noupdate -radix unsigned /testbench/exe_14/tick_counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {655483 ns} 0}
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
WaveRestoreZoom {655396 ns} {655591 ns}
