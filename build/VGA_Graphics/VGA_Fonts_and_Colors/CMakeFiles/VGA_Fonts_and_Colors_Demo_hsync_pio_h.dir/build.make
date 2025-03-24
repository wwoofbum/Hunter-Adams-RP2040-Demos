# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gerard/Hunter-Adams-RP2040-Demos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gerard/Hunter-Adams-RP2040-Demos/build

# Utility rule file for VGA_Fonts_and_Colors_Demo_hsync_pio_h.

# Include any custom commands dependencies for this target.
include VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/compiler_depend.make

# Include the progress variables for this target.
include VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/progress.make

VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h: VGA_Graphics/VGA_Fonts_and_Colors/hsync.pio.h

VGA_Graphics/VGA_Fonts_and_Colors/hsync.pio.h: /home/gerard/Hunter-Adams-RP2040-Demos/VGA_Graphics/VGA_Fonts_and_Colors/hsync.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/gerard/Hunter-Adams-RP2040-Demos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating hsync.pio.h"
	cd /home/gerard/Hunter-Adams-RP2040-Demos/build/VGA_Graphics/VGA_Fonts_and_Colors && ../../pioasm-install/pioasm/pioasm -o c-sdk -v 0 /home/gerard/Hunter-Adams-RP2040-Demos/VGA_Graphics/VGA_Fonts_and_Colors/hsync.pio /home/gerard/Hunter-Adams-RP2040-Demos/build/VGA_Graphics/VGA_Fonts_and_Colors/hsync.pio.h

VGA_Fonts_and_Colors_Demo_hsync_pio_h: VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h
VGA_Fonts_and_Colors_Demo_hsync_pio_h: VGA_Graphics/VGA_Fonts_and_Colors/hsync.pio.h
VGA_Fonts_and_Colors_Demo_hsync_pio_h: VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/build.make
.PHONY : VGA_Fonts_and_Colors_Demo_hsync_pio_h

# Rule to build all files generated by this target.
VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/build: VGA_Fonts_and_Colors_Demo_hsync_pio_h
.PHONY : VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/build

VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/clean:
	cd /home/gerard/Hunter-Adams-RP2040-Demos/build/VGA_Graphics/VGA_Fonts_and_Colors && $(CMAKE_COMMAND) -P CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/cmake_clean.cmake
.PHONY : VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/clean

VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/depend:
	cd /home/gerard/Hunter-Adams-RP2040-Demos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gerard/Hunter-Adams-RP2040-Demos /home/gerard/Hunter-Adams-RP2040-Demos/VGA_Graphics/VGA_Fonts_and_Colors /home/gerard/Hunter-Adams-RP2040-Demos/build /home/gerard/Hunter-Adams-RP2040-Demos/build/VGA_Graphics/VGA_Fonts_and_Colors /home/gerard/Hunter-Adams-RP2040-Demos/build/VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : VGA_Graphics/VGA_Fonts_and_Colors/CMakeFiles/VGA_Fonts_and_Colors_Demo_hsync_pio_h.dir/depend

