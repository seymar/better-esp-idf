# Better ESP-IDF project setup
This repository is an example of a better way to set up an ESP32 project using
esp-idf as submodule.

The following improvements are made:
 - ESP-IDF as submodule to always have the correct version for the project
 - Initiating builds and other targets using `make` instead of `idf.py`, which
   has less prerequisites and allows customization of targets.
 - No need to set the `ESP_IDF` environment variable as the Makefile sets it
 automatically to the ESP-IDF that is in the current directory.
 - Components can be selected in `components.mk` to save build time.
 - Added a `./components/` directory to contain project components which can be
   added to the build in `components.mk` or in the app's `component.mk` as
   dependency.
 - Multiple 'apps' which can be selected on project level using `config.mk`.
 - JTAG support with FTDI FT2232/FT4232 mini modules
 - `make prog` superfast JTAG flash programming @ 20 MHz
 - JTAG debugging using OpenOCD and VSCode Native C/C++ debugger, no ESP-IDF
   extension required.
 - `make intellisense` target that adds all component include paths to VSCode's
   IntelliSense engine using a Python script.

## Prerequisites
The toolchain is expected to be already installed in for example `~/.espressif`
and `xtensa-esp32-elf` bin should be added to the PATH. Furthermore, `openocd`
is expected to be symlinked as `openocd-esp32` and available in the PATH.
It could be symlinked into `~/bin/` for example. This is to make sure there are
no absolute paths needed anywhere in this repo nor the need to configure them.
### Python
The IntelliSense generator script requires `python` with `json5` to read
`settings.json`. Install with `pip install json5`.

# How to use
```
git clone <this repo>
git submodule update --init
make -j
make flash
```

## Todo
 - [ ] Windows support
 - [ ] Automatically add all components in `./components/` instead of needing to
       list them in `components.mk`
 - [ ] Add a `boards` folder with board specific configurations
 - [ ] Add a `programmers` folder with different OpenOCD configurations
