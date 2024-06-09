;FLAVOR:Marlin
;TIME:1955
;Filament used: 1.00883m
;Layer height: 0.2
;MINX:93.506
;MINY:71.758
;MINZ:0.2
;MAXX:126.495
;MAXY:148.532
;MAXZ:9
;Generated with Cura_SteamEngine 4.9.0


M140 S60 ; Preheat the bed to 60
M105 ; 
M190 S60 ; Wait for the bed to be at 60

M104 S200 ; Preheat the nozzle to 200
M105 ;
M109 S200 ; Wait for the nozzle to be at 200

M82 ;absolute extrusion mode






; Ender 3 Custom Start G-code

G92 E0 ; Reset Extruder

G28 ; Home all axes

G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed

G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line

G92 E0 ; Reset Extruder

G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish

