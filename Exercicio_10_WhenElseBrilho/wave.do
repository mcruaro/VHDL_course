onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /testbench/seletor_brilho/b0
add wave -noupdate -radix unsigned /testbench/seletor_brilho/b1
add wave -noupdate -radix unsigned /testbench/seletor_brilho/b2
add wave -noupdate -radix unsigned /testbench/seletor_brilho/b3
add wave -noupdate -divider Seletor
add wave -noupdate -color Red -radix unsigned /testbench/seletor_brilho/bs
add wave -noupdate -divider Saida
add wave -noupdate -color Gold -radix unsigned /testbench/seletor_brilho/b_retorno
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {236 ns} 0}
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
