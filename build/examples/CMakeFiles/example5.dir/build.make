# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dsc/sw/jrtplib2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dsc/sw/jrtplib2/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/example5.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/example5.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/example5.dir/flags.make

examples/CMakeFiles/example5.dir/example5.cpp.o: examples/CMakeFiles/example5.dir/flags.make
examples/CMakeFiles/example5.dir/example5.cpp.o: ../examples/example5.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dsc/sw/jrtplib2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/example5.dir/example5.cpp.o"
	cd /home/dsc/sw/jrtplib2/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example5.dir/example5.cpp.o -c /home/dsc/sw/jrtplib2/examples/example5.cpp

examples/CMakeFiles/example5.dir/example5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example5.dir/example5.cpp.i"
	cd /home/dsc/sw/jrtplib2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dsc/sw/jrtplib2/examples/example5.cpp > CMakeFiles/example5.dir/example5.cpp.i

examples/CMakeFiles/example5.dir/example5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example5.dir/example5.cpp.s"
	cd /home/dsc/sw/jrtplib2/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dsc/sw/jrtplib2/examples/example5.cpp -o CMakeFiles/example5.dir/example5.cpp.s

examples/CMakeFiles/example5.dir/example5.cpp.o.requires:

.PHONY : examples/CMakeFiles/example5.dir/example5.cpp.o.requires

examples/CMakeFiles/example5.dir/example5.cpp.o.provides: examples/CMakeFiles/example5.dir/example5.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/example5.dir/build.make examples/CMakeFiles/example5.dir/example5.cpp.o.provides.build
.PHONY : examples/CMakeFiles/example5.dir/example5.cpp.o.provides

examples/CMakeFiles/example5.dir/example5.cpp.o.provides.build: examples/CMakeFiles/example5.dir/example5.cpp.o


# Object files for target example5
example5_OBJECTS = \
"CMakeFiles/example5.dir/example5.cpp.o"

# External object files for target example5
example5_EXTERNAL_OBJECTS =

examples/example5: examples/CMakeFiles/example5.dir/example5.cpp.o
examples/example5: examples/CMakeFiles/example5.dir/build.make
examples/example5: src/libjrtp.a
examples/example5: examples/CMakeFiles/example5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dsc/sw/jrtplib2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example5"
	cd /home/dsc/sw/jrtplib2/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/example5.dir/build: examples/example5

.PHONY : examples/CMakeFiles/example5.dir/build

examples/CMakeFiles/example5.dir/requires: examples/CMakeFiles/example5.dir/example5.cpp.o.requires

.PHONY : examples/CMakeFiles/example5.dir/requires

examples/CMakeFiles/example5.dir/clean:
	cd /home/dsc/sw/jrtplib2/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/example5.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/example5.dir/clean

examples/CMakeFiles/example5.dir/depend:
	cd /home/dsc/sw/jrtplib2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dsc/sw/jrtplib2 /home/dsc/sw/jrtplib2/examples /home/dsc/sw/jrtplib2/build /home/dsc/sw/jrtplib2/build/examples /home/dsc/sw/jrtplib2/build/examples/CMakeFiles/example5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/example5.dir/depend

