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
include CMakeFiles/unorder_container.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/unorder_container.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unorder_container.dir/flags.make

CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.o: CMakeFiles/unorder_container.dir/flags.make
CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.o: ../11-associative_containers/unorder_container.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.o -c /tmp/tmp.BEahKwdCRO/11-associative_containers/unorder_container.cpp

CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BEahKwdCRO/11-associative_containers/unorder_container.cpp > CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.i

CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BEahKwdCRO/11-associative_containers/unorder_container.cpp -o CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.s

# Object files for target unorder_container
unorder_container_OBJECTS = \
"CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.o"

# External object files for target unorder_container
unorder_container_EXTERNAL_OBJECTS =

unorder_container: CMakeFiles/unorder_container.dir/11-associative_containers/unorder_container.cpp.o
unorder_container: CMakeFiles/unorder_container.dir/build.make
unorder_container: CMakeFiles/unorder_container.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable unorder_container"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unorder_container.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unorder_container.dir/build: unorder_container

.PHONY : CMakeFiles/unorder_container.dir/build

CMakeFiles/unorder_container.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unorder_container.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unorder_container.dir/clean

CMakeFiles/unorder_container.dir/depend:
	cd /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host /tmp/tmp.BEahKwdCRO/cmake-build-debug-remote-host/CMakeFiles/unorder_container.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unorder_container.dir/depend

