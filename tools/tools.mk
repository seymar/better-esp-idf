# Flash using OpenOCD (muuuuuch faster than serial)
prog:
	openocd-esp32.exe -f ./tools/ftdi_mini_module.cfg -f target/esp32.cfg \
		-c "program_esp build/$(APP).bin 0x10000 reset exit"

# Run openocd to allow GDB connections at :3333
oocd:
	openocd-esp32.exe -f ./tools/ftdi_mini_module.cfg -f target/esp32.cfg -c "init"

# Run GDB to connect to OpenOCD
gdboocd:
	xtensa-esp32-elf-gdb.exe build/$(APP).elf -nh -ex "target remote | openocd-esp32.exe -f /home/stijn/dev/better-esp-idf/tools/ftdi_mini_module.cfg -f target/esp32.cfg -c 'gdb_port pipe; log_output openocd.log' -c 'init'openocd-esp32.exe -f ./tools/ftdi_mini_module.cfg -f target/esp32.cfg -c 'gdb_port pipe; log_output openocd.log' -c 'init'"

# Generate C/C++ include paths for all components and add them to settings.json
intellisense:
	python tools/intellisense.py "$(COMPONENT_INCLUDES)"
