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
include CMakeFiles/copy_control_sample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/copy_control_sample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/copy_control_sample.dir/flags.make

CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.o: CMakeFiles/copy_control_sample.dir/flags.make
CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.o: ../13-copy_control/copy_control_sample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.o -c /tmp/tmp.BEahKwdCRO/13-copy_control/copy_control_sample.cpp

CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BEahKwdCRO/13-copy_control/copy_control_sample.cpp > CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.i

CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BEahKwdCRO/13-copy_control/copy_control_sample.cpp -o CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.s

# Object files for target copy_control_sample
copy_control_sample_OBJECTS = \
"CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.o"

# External object files for target copy_control_sample
copy_control_sample_EXTERNAL_OBJECTS =

copy_control_sample: CMakeFiles/copy_control_sample.dir/13-copy_control/copy_control_sample.cpp.o
copy_control_sample: CMakeFiles/copy_control_sample.dir/build.make
copy_control_sample: CMakeFiles/copy_control_sample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable copy_control_sample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/copy_control_sample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/copy_control_sample.dir/build: copy_control_sample

.PHONY : CMakeFiles/copy_control_sample.dir/build

CMakeFiles/copy_control_sample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/copy_control_sample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/copy_control_sample.dir/clean

CMakeFiles/copy_control_sample.dir/depend:
	cd /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles/copy_control_sample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/copy_control_sample.dir/depend

