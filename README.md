# Motor-Controller

12-48VDC 65A continuous (150A Peak) 0-100% duty cycle brushed DC motor driver 

Communicates to a master controller through I2C with commands that look like the following:

DSSSSSSS

Where D is the direction (0 or 1) (1 will apply +VDC to Motor+ Terminal) (0 Will apply +VDC to the Motor- Terminal)
S is the duty cycle from 0-100% (This is checked by the software to ensure it is within bounds) (Anything out of bounds is clamped to 100%)

I2C address can be changed with the dip switches on the board and allows up to 8 motor drivers to run at the same time.

Returns a status byte to describe what the controller is doing. If faults are present, there are seperate status codes for each failure and can be found within the code folder in the controller status codes excel sheet.
