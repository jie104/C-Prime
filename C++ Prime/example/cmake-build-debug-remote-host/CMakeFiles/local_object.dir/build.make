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
CMAKE_SOURCE_DIR = /tmp/tmp.BEahKwdCRO

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host

# Include any dependencies generated for this target.
include CMakeFiles/local_object.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/local_object.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/local_object.dir/flags.make

CMakeFiles/local_object.dir/6-function/local_object.cpp.o: CMakeFiles/local_object.dir/flags.make
CMakeFiles/local_object.dir/6-function/local_object.cpp.o: ../6-function/local_object.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/local_object.dir/6-function/local_object.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/local_object.dir/6-function/local_object.cpp.o -c /tmp/tmp.BEahKwdCRO/6-function/local_object.cpp

CMakeFiles/local_object.dir/6-function/local_object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/local_object.dir/6-function/local_object.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BEahKwdCRO/6-function/local_object.cpp > CMakeFiles/local_object.dir/6-function/local_object.cpp.i

CMakeFiles/local_object.dir/6-function/local_object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/local_object.dir/6-function/local_object.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BEahKwdCRO/6-function/local_object.cpp -o CMakeFiles/local_object.dir/6-function/local_object.cpp.s

# Object files for target local_object
local_object_OBJECTS = \
"CMakeFiles/local_object.dir/6-function/local_object.cpp.o"

# External object files for target local_object
local_object_EXTERNAL_OBJECTS =

local_object: CMakeFiles/local_object.dir/6-function/local_object.cpp.o
local_object: CMakeFiles/local_object.dir/build.make
local_object: CMakeFiles/local_object.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable local_object"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/local_object.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/local_object.dir/build: local_object

.PHONY : CMakeFiles/local_object.dir/build

CMakeFiles/local_object.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/local_object.dir/cmake_clean.cmake
.PHONY : CMakeFiles/local_object.dir/clean

CMakeFiles/local_object.dir/depend:
	cd /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles/local_object.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/local_object.dir/depend

