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
CMAKE_BINARY_DIR = /tmp/tmp.BEahKwdCRO/cmake-build-debug-rh31022

# Include any dependencies generated for this target.
include CMakeFiles/dynamic_memory_management_class.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dynamic_memory_management_class.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dynamic_memory_management_class.dir/flags.make

CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.o: CMakeFiles/dynamic_memory_management_class.dir/flags.make
CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.o: ../13-copy_control/dynamic_memory_management_class.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-rh31022/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.o -c /tmp/tmp.BEahKwdCRO/13-copy_control/dynamic_memory_management_class.cpp

CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BEahKwdCRO/13-copy_control/dynamic_memory_management_class.cpp > CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.i

CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BEahKwdCRO/13-copy_control/dynamic_memory_management_class.cpp -o CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.s

# Object files for target dynamic_memory_management_class
dynamic_memory_management_class_OBJECTS = \
"CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.o"

# External object files for target dynamic_memory_management_class
dynamic_memory_management_class_EXTERNAL_OBJECTS =

dynamic_memory_management_class: CMakeFiles/dynamic_memory_management_class.dir/13-copy_control/dynamic_memory_management_class.cpp.o
dynamic_memory_management_class: CMakeFiles/dynamic_memory_management_class.dir/build.make
dynamic_memory_management_class: CMakeFiles/dynamic_memory_management_class.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.BEahKwdCRO/cmake-build-debug-rh31022/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dynamic_memory_management_class"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dynamic_memory_management_class.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dynamic_memory_management_class.dir/build: dynamic_memory_management_class

.PHONY : CMakeFiles/dynamic_memory_management_class.dir/build

CMakeFiles/dynamic_memory_management_class.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dynamic_memory_management_class.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dynamic_memory_management_class.dir/clean

CMakeFiles/dynamic_memory_management_class.dir/depend:
	cd /tmp/tmp.BEahKwdCRO/cmake-build-debug-rh31022 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO /tmp/tmp.BEahKwdCRO/cmake-build-debug-rh31022 /tmp/tmp.BEahKwdCRO/cmake-build-debug-rh31022 /tmp/tmp.BEahKwdCRO/cmake-build-debug-rh31022/CMakeFiles/dynamic_memory_management_class.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dynamic_memory_management_class.dir/depend

