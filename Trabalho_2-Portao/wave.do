onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clock
add wave -noupdate /testbench/reset
add wave -noupdate -expand -group PORTAO /testbench/my_portao/controle_on
add wave -noupdate -expand -group PORTAO /testbench/my_portao/fa
add wave -noupdate -expand -group PORTAO /testbench/my_portao/ff
add wave -noupdate -expand -group PORTAO /testbench/my_portao/abrir
add wave -noupdate -expand -group PORTAO /testbench/my_portao/fechar
add wave -noupdate -expand -group PORTAO /testbench/my_portao/FSM_P
add wave -noupdate -group TB /testbench/tb_controle_on
add wave -noupdate -group TB /testbench/tb_fa
add wave -noupdate -group TB /testbench/tb_ff
add wave -noupdate -group TB /testbench/tb_abrir
add wave -noupdate -group TB /testbench/tb_fechar
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49 ns} 0}
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
