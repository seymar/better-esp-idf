# Stijn Martens (seymar), 20 December 2020

# This Makefile is used as a "wrapper" to call the ESP-IDF build system using
# convenient targets just like idf.py tries to do but for CMake.
# Because ESP-IDF also has a legacy Make build system aside from CMake, we can
# just include the legacy Make build system and use all its targets. ESP-IDF's
# examples also use this method of allowing you to call `make` form within the
# project folder.
# In the future if ESP-IDF might not support legacy `make` anymore :-( 
# This Makefile could then recusively call CMake directly as idf.py does
# Using legacy Make is preferred over idf.py because idf.py depends on Python
# and a whole bunch of packages and their specific versions which can cause a
# a lot of extra struggles when setting up a project for the first time.

# ESP-IDF's build system has this makefile as a prerequisite, so all changes to
# it trigger a full rebuild. Therefore, a separate config.mk file is included.
include config.mk
include components.mk

# Add the APP chosen in config.mk as component
EXTRA_COMPONENT_DIRS += $(PROJECT_PATH)/app $(PROJECT_PATH)/components
COMPONENTS += $(APP)

# The name of the binary files to create
PROJECT_NAME := $(APP)

# Let ESP-IDF's build system do it's thing
# This could later be replace to a recursive call to CMake.
export IDF_PATH := ./esp-idf
include $(IDF_PATH)/make/project.mk