onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clock
add wave -noupdate /testbench/reset
add wave -noupdate /testbench/sig_data_out
add wave -noupdate /testbench/sig_data_in
add wave -noupdate /testbench/sig_read_addr
add wave -noupdate /testbench/sig_write_addr
add wave -noupdate /testbench/sig_we
add wave -noupdate /testbench/FSM
add wave -noupdate /testbench/mem/memoria
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
