# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Michael Walker\CLionProjects\untitled"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Michael Walker\CLionProjects\untitled\cmake-build-debug"

# Include any dependencies generated for this target.
include lib/glfw/tests/CMakeFiles/clipboard.dir/depend.make

# Include the progress variables for this target.
include lib/glfw/tests/CMakeFiles/clipboard.dir/progress.make

# Include the compile flags for this target's objects.
include lib/glfw/tests/CMakeFiles/clipboard.dir/flags.make

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/flags.make
lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/includes_C.rsp
lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj: ../lib/glfw/tests/clipboard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Michael Walker\CLionProjects\untitled\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\clipboard.dir\clipboard.c.obj   -c "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\tests\clipboard.c"

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/clipboard.c.i"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\tests\clipboard.c" > CMakeFiles\clipboard.dir\clipboard.c.i

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/clipboard.c.s"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\tests\clipboard.c" -o CMakeFiles\clipboard.dir\clipboard.c.s

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/flags.make
lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/includes_C.rsp
lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj: ../lib/glfw/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Michael Walker\CLionProjects\untitled\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\clipboard.dir\__\deps\getopt.c.obj   -c "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\deps\getopt.c"

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/__/deps/getopt.c.i"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\deps\getopt.c" > CMakeFiles\clipboard.dir\__\deps\getopt.c.i

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/__/deps/getopt.c.s"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\deps\getopt.c" -o CMakeFiles\clipboard.dir\__\deps\getopt.c.s

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad_gl.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/flags.make
lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad_gl.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/includes_C.rsp
lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad_gl.c.obj: ../lib/glfw/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Michael Walker\CLionProjects\untitled\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\clipboard.dir\__\deps\glad_gl.c.obj   -c "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\deps\glad_gl.c"

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\deps\glad_gl.c" > CMakeFiles\clipboard.dir\__\deps\glad_gl.c.i

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && C:\mingw\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\deps\glad_gl.c" -o CMakeFiles\clipboard.dir\__\deps\glad_gl.c.s

# Object files for target clipboard
clipboard_OBJECTS = \
"CMakeFiles/clipboard.dir/clipboard.c.obj" \
"CMakeFiles/clipboard.dir/__/deps/getopt.c.obj" \
"CMakeFiles/clipboard.dir/__/deps/glad_gl.c.obj"

# External object files for target clipboard
clipboard_EXTERNAL_OBJECTS =

lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad_gl.c.obj
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/build.make
lib/glfw/tests/clipboard.exe: lib/glfw/src/libglfw3.a
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/linklibs.rsp
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/objects1.rsp
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Michael Walker\CLionProjects\untitled\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable clipboard.exe"
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\clipboard.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/glfw/tests/CMakeFiles/clipboard.dir/build: lib/glfw/tests/clipboard.exe

.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/build

lib/glfw/tests/CMakeFiles/clipboard.dir/clean:
	cd /d C:\Users\MICHAE~1\CLIONP~1\untitled\CMAKE-~1\lib\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\clipboard.dir\cmake_clean.cmake
.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/clean

lib/glfw/tests/CMakeFiles/clipboard.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Michael Walker\CLionProjects\untitled" "C:\Users\Michael Walker\CLionProjects\untitled\lib\glfw\tests" "C:\Users\Michael Walker\CLionProjects\untitled\cmake-build-debug" "C:\Users\Michael Walker\CLionProjects\untitled\cmake-build-debug\lib\glfw\tests" "C:\Users\Michael Walker\CLionProjects\untitled\cmake-build-debug\lib\glfw\tests\CMakeFiles\clipboard.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/depend

