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
CMAKE_SOURCE_DIR = /tmp/tmp.kzcE3yO785

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.kzcE3yO785/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/dynamic_memory_and_technique_ptr.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dynamic_memory_and_technique_ptr.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dynamic_memory_and_technique_ptr.dir/flags.make

CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.o: CMakeFiles/dynamic_memory_and_technique_ptr.dir/flags.make
CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.o: ../12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.kzcE3yO785/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.o -c /tmp/tmp.kzcE3yO785/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp

CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.kzcE3yO785/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp > CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.i

CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.kzcE3yO785/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp -o CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.s

# Object files for target dynamic_memory_and_technique_ptr
dynamic_memory_and_technique_ptr_OBJECTS = \
"CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.o"

# External object files for target dynamic_memory_and_technique_ptr
dynamic_memory_and_technique_ptr_EXTERNAL_OBJECTS =

dynamic_memory_and_technique_ptr: CMakeFiles/dynamic_memory_and_technique_ptr.dir/12-dynamic_memory/dynamic_memory_and_technique_ptr.cpp.o
dynamic_memory_and_technique_ptr: CMakeFiles/dynamic_memory_and_technique_ptr.dir/build.make
dynamic_memory_and_technique_ptr: CMakeFiles/dynamic_memory_and_technique_ptr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.kzcE3yO785/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dynamic_memory_and_technique_ptr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dynamic_memory_and_technique_ptr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dynamic_memory_and_technique_ptr.dir/build: dynamic_memory_and_technique_ptr

.PHONY : CMakeFiles/dynamic_memory_and_technique_ptr.dir/build

CMakeFiles/dynamic_memory_and_technique_ptr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dynamic_memory_and_technique_ptr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dynamic_memory_and_technique_ptr.dir/clean

CMakeFiles/dynamic_memory_and_technique_ptr.dir/depend:
	cd /tmp/tmp.kzcE3yO785/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.kzcE3yO785 /tmp/tmp.kzcE3yO785 /tmp/tmp.kzcE3yO785/cmake-build-debug /tmp/tmp.kzcE3yO785/cmake-build-debug /tmp/tmp.kzcE3yO785/cmake-build-debug/CMakeFiles/dynamic_memory_and_technique_ptr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dynamic_memory_and_technique_ptr.dir/depend

