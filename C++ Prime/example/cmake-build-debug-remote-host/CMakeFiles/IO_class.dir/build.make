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
include CMakeFiles/IO_class.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/IO_class.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/IO_class.dir/flags.make

CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.o: CMakeFiles/IO_class.dir/flags.make
CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.o: ../8-IO_lib/IO_class.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.o -c /tmp/tmp.BEahKwdCRO/8-IO_lib/IO_class.cpp

CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BEahKwdCRO/8-IO_lib/IO_class.cpp > CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.i

CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BEahKwdCRO/8-IO_lib/IO_class.cpp -o CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.s

# Object files for target IO_class
IO_class_OBJECTS = \
"CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.o"

# External object files for target IO_class
IO_class_EXTERNAL_OBJECTS =

IO_class: CMakeFiles/IO_class.dir/8-IO_lib/IO_class.cpp.o
IO_class: CMakeFiles/IO_class.dir/build.make
IO_class: CMakeFiles/IO_class.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable IO_class"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IO_class.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IO_class.dir/build: IO_class

.PHONY : CMakeFiles/IO_class.dir/build

CMakeFiles/IO_class.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/IO_class.dir/cmake_clean.cmake
.PHONY : CMakeFiles/IO_class.dir/clean

CMakeFiles/IO_class.dir/depend:
	cd /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles/IO_class.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IO_class.dir/depend

