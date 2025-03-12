M190 S60 ; Temp bed to 60
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