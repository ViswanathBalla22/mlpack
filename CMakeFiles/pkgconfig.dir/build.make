# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/mlpack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/mlpack

# Utility rule file for pkgconfig.

# Include the progress variables for this target.
include CMakeFiles/pkgconfig.dir/progress.make

CMakeFiles/pkgconfig:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspaces/mlpack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating mlpack.pc (pkg-config) file."
	/usr/bin/cmake -D MLPACK_SOURCE_DIR="/workspaces/mlpack" -P /workspaces/mlpack/CMake/GeneratePkgConfig.cmake

pkgconfig: CMakeFiles/pkgconfig
pkgconfig: CMakeFiles/pkgconfig.dir/build.make

.PHONY : pkgconfig

# Rule to build all files generated by this target.
CMakeFiles/pkgconfig.dir/build: pkgconfig

.PHONY : CMakeFiles/pkgconfig.dir/build

CMakeFiles/pkgconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pkgconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pkgconfig.dir/clean

CMakeFiles/pkgconfig.dir/depend:
	cd /workspaces/mlpack && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/mlpack /workspaces/mlpack /workspaces/mlpack /workspaces/mlpack /workspaces/mlpack/CMakeFiles/pkgconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pkgconfig.dir/depend

