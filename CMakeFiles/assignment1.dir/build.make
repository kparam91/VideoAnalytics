# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/kp/CMPE 297 programs"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/kp/CMPE 297 programs"

# Include any dependencies generated for this target.
include CMakeFiles/assignment1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/assignment1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/assignment1.dir/flags.make

CMakeFiles/assignment1.dir/assignment1.cpp.o: CMakeFiles/assignment1.dir/flags.make
CMakeFiles/assignment1.dir/assignment1.cpp.o: assignment1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/kp/CMPE 297 programs/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/assignment1.dir/assignment1.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/assignment1.dir/assignment1.cpp.o -c "/home/kp/CMPE 297 programs/assignment1.cpp"

CMakeFiles/assignment1.dir/assignment1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment1.dir/assignment1.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/kp/CMPE 297 programs/assignment1.cpp" > CMakeFiles/assignment1.dir/assignment1.cpp.i

CMakeFiles/assignment1.dir/assignment1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment1.dir/assignment1.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/kp/CMPE 297 programs/assignment1.cpp" -o CMakeFiles/assignment1.dir/assignment1.cpp.s

CMakeFiles/assignment1.dir/assignment1.cpp.o.requires:
.PHONY : CMakeFiles/assignment1.dir/assignment1.cpp.o.requires

CMakeFiles/assignment1.dir/assignment1.cpp.o.provides: CMakeFiles/assignment1.dir/assignment1.cpp.o.requires
	$(MAKE) -f CMakeFiles/assignment1.dir/build.make CMakeFiles/assignment1.dir/assignment1.cpp.o.provides.build
.PHONY : CMakeFiles/assignment1.dir/assignment1.cpp.o.provides

CMakeFiles/assignment1.dir/assignment1.cpp.o.provides.build: CMakeFiles/assignment1.dir/assignment1.cpp.o

# Object files for target assignment1
assignment1_OBJECTS = \
"CMakeFiles/assignment1.dir/assignment1.cpp.o"

# External object files for target assignment1
assignment1_EXTERNAL_OBJECTS =

assignment1: CMakeFiles/assignment1.dir/assignment1.cpp.o
assignment1: CMakeFiles/assignment1.dir/build.make
assignment1: /usr/local/lib/libopencv_videostab.so.3.1.0
assignment1: /usr/local/lib/libopencv_videoio.so.3.1.0
assignment1: /usr/local/lib/libopencv_video.so.3.1.0
assignment1: /usr/local/lib/libopencv_superres.so.3.1.0
assignment1: /usr/local/lib/libopencv_stitching.so.3.1.0
assignment1: /usr/local/lib/libopencv_shape.so.3.1.0
assignment1: /usr/local/lib/libopencv_photo.so.3.1.0
assignment1: /usr/local/lib/libopencv_objdetect.so.3.1.0
assignment1: /usr/local/lib/libopencv_ml.so.3.1.0
assignment1: /usr/local/lib/libopencv_imgproc.so.3.1.0
assignment1: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
assignment1: /usr/local/lib/libopencv_highgui.so.3.1.0
assignment1: /usr/local/lib/libopencv_flann.so.3.1.0
assignment1: /usr/local/lib/libopencv_features2d.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudev.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudawarping.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudastereo.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudaoptflow.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudaobjdetect.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudalegacy.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudaimgproc.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudafilters.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudafeatures2d.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudacodec.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudabgsegm.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudaarithm.so.3.1.0
assignment1: /usr/local/lib/libopencv_core.so.3.1.0
assignment1: /usr/local/lib/libopencv_calib3d.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudawarping.so.3.1.0
assignment1: /usr/local/lib/libopencv_objdetect.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudafilters.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudaarithm.so.3.1.0
assignment1: /usr/local/lib/libopencv_features2d.so.3.1.0
assignment1: /usr/local/lib/libopencv_ml.so.3.1.0
assignment1: /usr/local/lib/libopencv_highgui.so.3.1.0
assignment1: /usr/local/lib/libopencv_videoio.so.3.1.0
assignment1: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
assignment1: /usr/local/lib/libopencv_flann.so.3.1.0
assignment1: /usr/local/lib/libopencv_video.so.3.1.0
assignment1: /usr/local/lib/libopencv_imgproc.so.3.1.0
assignment1: /usr/local/lib/libopencv_core.so.3.1.0
assignment1: /usr/local/lib/libopencv_cudev.so.3.1.0
assignment1: CMakeFiles/assignment1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable assignment1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assignment1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/assignment1.dir/build: assignment1
.PHONY : CMakeFiles/assignment1.dir/build

CMakeFiles/assignment1.dir/requires: CMakeFiles/assignment1.dir/assignment1.cpp.o.requires
.PHONY : CMakeFiles/assignment1.dir/requires

CMakeFiles/assignment1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/assignment1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/assignment1.dir/clean

CMakeFiles/assignment1.dir/depend:
	cd "/home/kp/CMPE 297 programs" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/kp/CMPE 297 programs" "/home/kp/CMPE 297 programs" "/home/kp/CMPE 297 programs" "/home/kp/CMPE 297 programs" "/home/kp/CMPE 297 programs/CMakeFiles/assignment1.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/assignment1.dir/depend

