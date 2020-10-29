onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clock
add wave -noupdate /testbench/reset
add wave -noupdate -expand -group MEMORIA -childformat {{/testbench/mem/memoria(5) -radix binary}} -expand -subitemconfig {/testbench/mem/memoria(5) {-height 15 -radix binary}} /testbench/mem/memoria
add wave -noupdate -expand -group ESCRITA -radix binary /testbench/sig_data_in
add wave -noupdate -expand -group ESCRITA /testbench/sig_write_addr
add wave -noupdate -expand -group ESCRITA /testbench/sig_we
add wave -noupdate -expand -group LEITURA -radix binary /testbench/sig_data_out
add wave -noupdate -expand -group LEITURA /testbench/sig_read_addr
add wave -noupdate /testbench/FSM
add wave -noupdate -expand -group MATEMATICA -radix unsigned /testbench/data1
add wave -noupdate -expand -group MATEMATICA -radix unsigned /testbench/data2
add wave -noupdate -expand -group MATEMATICA -radix unsigned /testbench/soma
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {207 ns} 0}
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
WaveRestoreZoom {0 ns} {315 ns}
