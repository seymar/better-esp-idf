# Better ESP-IDF project setup
This repository is an example of a better way to set up an ESP32 project using
esp-idf as submodule.

The following improvements are made:
 - Project level ESP-IDF version management by including esp-idf as submodule
 into the project. No need to install ESP-IDF separately.
 - Initiating builds and other targets using `make` instead of `idf.py`, which
 which has less prerequisites and allows customization of targets.
 - No need to set the `ESP_IDF` environment variable as the Makefile sets it
 automatically to the ESP-IDF that is in the current directory.
 - Components to build and link can be selected in
 `components.mk` to save build time
 - Added a `./components/` to contain project components which can be added to
 the build in `components.mk` or in the app's `component.mk` as dependency.
 - Multiple 'apps' which can be selected on project level using `config.mk`.

 ## TODO
 - [] Debug support
 - [] Automatically add all components in `./components/`
