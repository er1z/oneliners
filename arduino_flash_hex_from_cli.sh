sudo avrdude -c wiring -p m2560 -P /dev/ttyUSB0 -D -U flash:w:Marlin.ino.hex
