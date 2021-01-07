# Stijn Martens (seymar), 20 December 2020

# The app is added to the ESP-IDF build system as a 'component' just like all 
# the other components in esp-idf/components. The build can be configured with
# a set of variables which are processed in: esp-idf/make/component_wrapper.mk
#
# > This is all optional if keeping all source files in the app root, headers
#   in the include folder and if there are no dependencies <
#
# The variables are stated with their flavor of assigment and default value that
# may or may not be kept (use += to append to the default)

# COMPONENT_SRCDIRS = .
# Additional directories of source files to compile, i.e. src modules

# COMPONENT_PRIV_INCLUDEDIRS ?=
# Directores to search for headers during app compilation

# COMPONENT_EXTRA_INCLUDES ?=
# Extra directories to search for headers during app compilation that are not in
# the app folder and thuss not app- but project specific.

# COMPONENT_DEPENDS ?=
# Component names on which this specific app depends. Beware, all non-app
# specific components or applicable for all apps should be set on project level.

# COMPONENT_EXTRA_CLEAN ?=
# Extra files to clean, for example generated files

# COMPONENT_SUBMODULES ?=
# Git submodules to initialize and update in the app folder

# CFLAGS += --DSOME_DEFINITION -someflagsomeflag
# CPPFLAGS += -DSOME_DEFINITION -someflag
# CXXFLAGS += -DSOME_DEFINITION -someflag
# Add build variables or other flags

# COMPONENT_ADD_LDFLAGS = -l$(COMPONENT_NAME)
# Adds the name of the app's static library to the linker
# Can be used to add more library names

# COMPONENT_ADD_LINKER_DEPS ?=
# To add a static archive (.a) of a library

# COMPONENT_ADD_LDFRAGMENTS ?=
# To add 'things?' to the linker script generator

################################################################################
## Variables useful for 'real' components, added as reference and to state    ##
## why they are probably not useful for the app                               ##
################################################################################

# COMPONENT_ADD_INCLUDEDIRS = include
# Public include directories: the app will not be included by anything else

# COMPONENT_OBJINCLUDE ?=
# COMPONENT_OBJEXCLUDE ?=
# Remove objects based on conditional compilation macros such as KConfig vars:
# COULD be used for configuring the app but that will probably be implemented in
# in another way such as the C-preprocessor. Excluding these few files from
# compilation will probably not yield much profit vs the added complexity
