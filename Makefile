# The name of the binary file to create
PROJECT_NAME := justsomename

# Variables that change are in a separate file because otherwise they trigger a
# full rebuild
include config.mk

# Let esp-idf's build system do it's thing
include $(IDF_PATH)/make/project.mk
