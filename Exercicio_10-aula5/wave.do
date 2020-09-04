onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group Contantes /teclado/A
add wave -noupdate -group Contantes /teclado/B
add wave -noupdate -group Contantes /teclado/C
add wave -noupdate -group Contantes /teclado/D
add wave -noupdate -expand -group Entradas -radix hexadecimal /teclado/a_en
add wave -noupdate -expand -group Entradas -radix hexadecimal /teclado/b_en
add wave -noupdate -expand -group Entradas -radix hexadecimal /teclado/c_en
add wave -noupdate -expand -group Entradas -radix hexadecimal /teclado/d_en
add wave -noupdate -expand -group Saida -radix ascii /teclado/key_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {36 ns} 0}
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
