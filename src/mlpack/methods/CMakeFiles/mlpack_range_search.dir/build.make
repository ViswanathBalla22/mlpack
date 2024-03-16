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

# Include any dependencies generated for this target.
include src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/depend.make

# Include the progress variables for this target.
include src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/progress.make

# Include the compile flags for this target's objects.
include src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/flags.make

src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.o: src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/flags.make
src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.o: src/mlpack/methods/range_search/range_search_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/mlpack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.o"
	cd /workspaces/mlpack/src/mlpack/methods && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.o -c /workspaces/mlpack/src/mlpack/methods/range_search/range_search_main.cpp

src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.i"
	cd /workspaces/mlpack/src/mlpack/methods && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/mlpack/src/mlpack/methods/range_search/range_search_main.cpp > CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.i

src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.s"
	cd /workspaces/mlpack/src/mlpack/methods && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/mlpack/src/mlpack/methods/range_search/range_search_main.cpp -o CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.s

# Object files for target mlpack_range_search
mlpack_range_search_OBJECTS = \
"CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.o"

# External object files for target mlpack_range_search
mlpack_range_search_EXTERNAL_OBJECTS =

bin/mlpack_range_search: src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/range_search/range_search_main.cpp.o
bin/mlpack_range_search: src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/build.make
bin/mlpack_range_search: /usr/lib/libarmadillo.so
bin/mlpack_range_search: src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/mlpack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/mlpack_range_search"
	cd /workspaces/mlpack/src/mlpack/methods && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mlpack_range_search.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/build: bin/mlpack_range_search

.PHONY : src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/build

src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/clean:
	cd /workspaces/mlpack/src/mlpack/methods && $(CMAKE_COMMAND) -P CMakeFiles/mlpack_range_search.dir/cmake_clean.cmake
.PHONY : src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/clean

src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/depend:
	cd /workspaces/mlpack && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/mlpack /workspaces/mlpack/src/mlpack/methods /workspaces/mlpack /workspaces/mlpack/src/mlpack/methods /workspaces/mlpack/src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/mlpack/methods/CMakeFiles/mlpack_range_search.dir/depend

