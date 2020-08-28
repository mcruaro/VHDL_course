onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider ENTRADA
add wave -noupdate -expand /principal/in1
add wave -noupdate -divider SINAIS
add wave -noupdate /principal/sig_out1
add wave -noupdate /principal/sig_out2
add wave -noupdate -divider SAIDA
add wave -noupdate /principal/out1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {999260 ns} 0}
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
WaveRestoreZoom {999050 ns} {1000050 ns}
