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
CMAKE_SOURCE_DIR = /home/topcarry/30DaysMakeCPPServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/topcarry/30DaysMakeCPPServer/build

# Include any dependencies generated for this target.
include CMakeFiles/cppserver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cppserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cppserver.dir/flags.make

CMakeFiles/cppserver.dir/main.cpp.o: CMakeFiles/cppserver.dir/flags.make
CMakeFiles/cppserver.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/topcarry/30DaysMakeCPPServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cppserver.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cppserver.dir/main.cpp.o -c /home/topcarry/30DaysMakeCPPServer/main.cpp

CMakeFiles/cppserver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cppserver.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/topcarry/30DaysMakeCPPServer/main.cpp > CMakeFiles/cppserver.dir/main.cpp.i

CMakeFiles/cppserver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cppserver.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/topcarry/30DaysMakeCPPServer/main.cpp -o CMakeFiles/cppserver.dir/main.cpp.s

# Object files for target cppserver
cppserver_OBJECTS = \
"CMakeFiles/cppserver.dir/main.cpp.o"

# External object files for target cppserver
cppserver_EXTERNAL_OBJECTS =

cppserver: CMakeFiles/cppserver.dir/main.cpp.o
cppserver: CMakeFiles/cppserver.dir/build.make
cppserver: CMakeFiles/cppserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/topcarry/30DaysMakeCPPServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cppserver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cppserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cppserver.dir/build: cppserver

.PHONY : CMakeFiles/cppserver.dir/build

CMakeFiles/cppserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cppserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cppserver.dir/clean

CMakeFiles/cppserver.dir/depend:
	cd /home/topcarry/30DaysMakeCPPServer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/topcarry/30DaysMakeCPPServer /home/topcarry/30DaysMakeCPPServer /home/topcarry/30DaysMakeCPPServer/build /home/topcarry/30DaysMakeCPPServer/build /home/topcarry/30DaysMakeCPPServer/build/CMakeFiles/cppserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cppserver.dir/depend

