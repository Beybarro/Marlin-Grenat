; Ender 3 Custom Start G-code
; Contains both start gcode and leveling gcode
M117 Setting warming temperatures;
M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature

M117 Homing Z axe to prevent burn;
G28 Z; Home all axe
M117 Leveling w BLTouch;
M420 L0 S1;
G1 Z6.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed

M117 Waiting for warming temperatures;
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature


G28 ; Home
G29 P1 ; Level the bed
G29 P3 ; Smart fill in
M421 I9 J0 Z0.05
M421 I9 J1 Z0.05
M421 I9 J2 Z0.05
M421 I9 J3 Z0.05
M421 I9 J4 Z0.05
M421 I9 J5 Z0.05
M421 I9 J6 Z0.05
M421 I9 J7 Z0.05
M421 I9 J9 Z0.150
M421 I9 J8 Z0.065
G29 F10 ; Set fade height to 10

G29 S0 ; Store mesh in slot 0
G29 A ; Activate UBL	
G29 L0 ; Load mesh in slot 0
M500 ; Store to eeprom

M117 Homing all axes;
G28 ; Home all axes
M117 Leveling w BLTouch;
M420 L0 S1; Loading mesh 1
G1 Z6.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed

M117 Setting E temp to {material_print_temperature_layer_0};
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature

M117 Moving to start position;
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position

M117 Resetting E;
G92 E0;
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line

M117 Resetting E;
G92 E0 ; Reset Extruder
M117 Moving Z up;
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish

; End of Custom G-code