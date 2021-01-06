# Flash using OpenOCD (muuuuuch faster than serial)
prog:
	openocd-esp32.exe -f ./tools/ftdi_mini_module.cfg -f target/esp32.cfg \
		-c "program_esp build/$(APP).bin 0x10000 reset exit"

# Run openocd to allow GDB connections at :3333
oocd:
	openocd-esp32.exe -f ./tools/ftdi_mini_module.cfg -f target/esp32.cfg -c "bindto 0.0.0.0" -c "init"

# Run GDB to connect to OpenOCD
gdb:
	xtensa-esp32-elf-gdb build/$(APP).elf -nh -ex "target remote :3333"

# Generate C/C++ include paths for all components and add them to settings.json
intellisense:
	python tools/intellisense.py "$(COMPONENT_INCLUDES)"
