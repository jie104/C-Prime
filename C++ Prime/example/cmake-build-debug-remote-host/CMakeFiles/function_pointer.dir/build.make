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
include CMakeFiles/function_pointer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/function_pointer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/function_pointer.dir/flags.make

CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.o: CMakeFiles/function_pointer.dir/flags.make
CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.o: ../6-function/function_pointer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.o -c /tmp/tmp.BEahKwdCRO/6-function/function_pointer.cpp

CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BEahKwdCRO/6-function/function_pointer.cpp > CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.i

CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BEahKwdCRO/6-function/function_pointer.cpp -o CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.s

# Object files for target function_pointer
function_pointer_OBJECTS = \
"CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.o"

# External object files for target function_pointer
function_pointer_EXTERNAL_OBJECTS =

function_pointer: CMakeFiles/function_pointer.dir/6-function/function_pointer.cpp.o
function_pointer: CMakeFiles/function_pointer.dir/build.make
function_pointer: CMakeFiles/function_pointer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable function_pointer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/function_pointer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/function_pointer.dir/build: function_pointer

.PHONY : CMakeFiles/function_pointer.dir/build

CMakeFiles/function_pointer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/function_pointer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/function_pointer.dir/clean

CMakeFiles/function_pointer.dir/depend:
	cd /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles/function_pointer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/function_pointer.dir/depend

