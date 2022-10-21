onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 45 /tboddparity/DUT/X
add wave -noupdate -divider {DUT signal}
add wave -noupdate -height 45 /tboddparity/DUT/IsOdd
add wave -noupdate -height 45 /tboddparity/DUT/entityUp
add wave -noupdate -height 45 /tboddparity/DUT/entityLow
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {642 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 73
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1041 ps}
