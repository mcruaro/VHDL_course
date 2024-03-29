onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clock
add wave -noupdate /testbench/reset
add wave -noupdate -expand -group Entradas -color Gold /testbench/tb_controle_on
add wave -noupdate -expand -group Entradas /testbench/tb_fa
add wave -noupdate -expand -group Entradas /testbench/tb_ff
add wave -noupdate -expand -group {Saidas do Chip} /testbench/tb_abrir
add wave -noupdate -expand -group {Saidas do Chip} /testbench/tb_fechar
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {205 ns} 0}
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
WaveRestoreZoom {0 ns} {683 ns}
