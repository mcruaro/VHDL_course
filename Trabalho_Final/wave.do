onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/my_rec/clock
add wave -noupdate /testbench/my_rec/reset
add wave -noupdate /testbench/my_rec/bit_in
add wave -noupdate /testbench/my_rec/line
add wave -noupdate /testbench/my_rec/recognized
add wave -noupdate /testbench/my_rec/counter
add wave -noupdate /testbench/my_rec/FSM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {85 ns} 0}
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
WaveRestoreZoom {0 ns} {1 us}
