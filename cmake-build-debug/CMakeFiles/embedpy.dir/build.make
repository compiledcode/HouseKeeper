# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zero/development/cpp_stuff/HouseKeeper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zero/development/cpp_stuff/HouseKeeper/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/embedpy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/embedpy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/embedpy.dir/flags.make

CMakeFiles/embedpy.dir/main.cpp.o: CMakeFiles/embedpy.dir/flags.make
CMakeFiles/embedpy.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zero/development/cpp_stuff/HouseKeeper/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/embedpy.dir/main.cpp.o"
	/usr/local/Cellar/gcc/9.2.0_2/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/embedpy.dir/main.cpp.o -c /Users/zero/development/cpp_stuff/HouseKeeper/main.cpp

CMakeFiles/embedpy.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embedpy.dir/main.cpp.i"
	/usr/local/Cellar/gcc/9.2.0_2/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zero/development/cpp_stuff/HouseKeeper/main.cpp > CMakeFiles/embedpy.dir/main.cpp.i

CMakeFiles/embedpy.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embedpy.dir/main.cpp.s"
	/usr/local/Cellar/gcc/9.2.0_2/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zero/development/cpp_stuff/HouseKeeper/main.cpp -o CMakeFiles/embedpy.dir/main.cpp.s

# Object files for target embedpy
embedpy_OBJECTS = \
"CMakeFiles/embedpy.dir/main.cpp.o"

# External object files for target embedpy
embedpy_EXTERNAL_OBJECTS =

embedpy: CMakeFiles/embedpy.dir/main.cpp.o
embedpy: CMakeFiles/embedpy.dir/build.make
embedpy: /Library/Frameworks/Python.framework/Versions/3.7/lib/libpython3.7m.dylib
embedpy: CMakeFiles/embedpy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zero/development/cpp_stuff/HouseKeeper/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable embedpy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/embedpy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/embedpy.dir/build: embedpy

.PHONY : CMakeFiles/embedpy.dir/build

CMakeFiles/embedpy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/embedpy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/embedpy.dir/clean

CMakeFiles/embedpy.dir/depend:
	cd /Users/zero/development/cpp_stuff/HouseKeeper/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zero/development/cpp_stuff/HouseKeeper /Users/zero/development/cpp_stuff/HouseKeeper /Users/zero/development/cpp_stuff/HouseKeeper/cmake-build-debug /Users/zero/development/cpp_stuff/HouseKeeper/cmake-build-debug /Users/zero/development/cpp_stuff/HouseKeeper/cmake-build-debug/CMakeFiles/embedpy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/embedpy.dir/depend

