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
include CMakeFiles/function_base.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/function_base.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/function_base.dir/flags.make

CMakeFiles/function_base.dir/6-function/function_base.cpp.o: CMakeFiles/function_base.dir/flags.make
CMakeFiles/function_base.dir/6-function/function_base.cpp.o: ../6-function/function_base.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/function_base.dir/6-function/function_base.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/function_base.dir/6-function/function_base.cpp.o -c /tmp/tmp.BEahKwdCRO/6-function/function_base.cpp

CMakeFiles/function_base.dir/6-function/function_base.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/function_base.dir/6-function/function_base.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BEahKwdCRO/6-function/function_base.cpp > CMakeFiles/function_base.dir/6-function/function_base.cpp.i

CMakeFiles/function_base.dir/6-function/function_base.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/function_base.dir/6-function/function_base.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BEahKwdCRO/6-function/function_base.cpp -o CMakeFiles/function_base.dir/6-function/function_base.cpp.s

# Object files for target function_base
function_base_OBJECTS = \
"CMakeFiles/function_base.dir/6-function/function_base.cpp.o"

# External object files for target function_base
function_base_EXTERNAL_OBJECTS =

function_base: CMakeFiles/function_base.dir/6-function/function_base.cpp.o
function_base: CMakeFiles/function_base.dir/build.make
function_base: CMakeFiles/function_base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable function_base"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/function_base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/function_base.dir/build: function_base

.PHONY : CMakeFiles/function_base.dir/build

CMakeFiles/function_base.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/function_base.dir/cmake_clean.cmake
.PHONY : CMakeFiles/function_base.dir/clean

CMakeFiles/function_base.dir/depend:
	cd /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles/function_base.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/function_base.dir/depend

