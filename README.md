# Better ESP-IDF project setup
This repository is an example of a better way to set up an ESP32 project using
esp-idf as submodule.

The following improvements are made:
 - Project level ESP-IDF version management by including esp-idf as submodule
 into the project. No need to install ESP-IDF separately. Makes sure the correct
 version is always used with the project.
 - Initiating builds and other targets using `make` instead of `idf.py`, which
 which has less prerequisites and allows customization of targets.
 - No need to set the `ESP_IDF` environment variable as the Makefile sets it
 automatically to the ESP-IDF that is in the current directory.
 - Components can be selected in `components.mk` to save build time.
 - Added a `./components/` to contain project components which can be added to
 the build in `components.mk` or in the app's `component.mk` as dependency.
 - Multiple 'apps' which can be selected on project level using `config.mk`.
 - JTAG support with FTDI FT2232/FT4232 mini modules
 - Superfast JTAG flashing using `make prog`
 - JTAG debugging

## Windows
This example project was developed on MacOS, no support for Windows (yet).

## Prerequisites
The toolchain is expected to be already installed in for example `~/.espressif`
and `xtensa-esp32-elf` bin should be added to the PATH. Furthermore, `openocd`
is expected to be symlinked as `openocd-esp32` and available in the PATH.
It could be symlinked into `~/bin/` for example. This is to make sure there are
no absolute paths needed anywhere in this repo nor the need to configure them.

## Debugging without ESP-IDF extension
ESP-IDF extension does not seem to be required for debugging.
First OpenOCD must be started in a terminal with `make oocd`. When it is running
succesfully starting a debug session lets GDB connect to the OpenOCD session as
configured in `launch.json`
_**Known bug**: Sometimes debugging needs to be started twice_

## Todo
 - [] Windows support
 - [] Debugging: Without external OpenOCD session
 - [] Debugging; Using ESP-IDF extension, (what is the benefit?)
 - [] Automatically add all components in `./components/` instead of needing to
      list them in `components.mk`
 - [] Add a `boards` folder with different configurations set in `config.mk`
 - [] Add a `programmers` folder with different configurations set in `config.mk`
