# Flash using OpenOCD (muuuuuch faster than serial)
prog:
	openocd-esp32.exe -f ./openocd.cfg \
		-c "program_esp build/$(APP).bin 0x10000 reset exit"

# Run openocd to allow GDB connections at :3333
oocd:
	openocd-esp32.exe -f ./openocd.cfg -c "init"

# Run GDB with OpenOCD as child process
gdboocd:
	xtensa-esp32-elf-gdb.exe build/$(APP).elf -nh -ex "target remote | openocd-esp32.exe -f ./openocd.cfg -c 'gdb_port pipe; log_output openocd.log' -c 'init'"

# Generate C/C++ include paths for all components and add them to settings.json
intellisense:
	python tools/intellisense.py "$(COMPONENT_INCLUDES)"
