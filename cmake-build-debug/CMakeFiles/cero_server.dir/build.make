# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/coding/cpp/Cocos-Server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/coding/cpp/Cocos-Server/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cero_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cero_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cero_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cero_server.dir/flags.make

CMakeFiles/cero_server.dir/log/log.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/log/log.cpp.o: ../log/log.cpp
CMakeFiles/cero_server.dir/log/log.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cero_server.dir/log/log.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"log/log.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/log/log.cpp.o -MF CMakeFiles/cero_server.dir/log/log.cpp.o.d -o CMakeFiles/cero_server.dir/log/log.cpp.o -c /home/coding/cpp/Cocos-Server/log/log.cpp

CMakeFiles/cero_server.dir/log/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/log/log.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"log/log.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/log/log.cpp > CMakeFiles/cero_server.dir/log/log.cpp.i

CMakeFiles/cero_server.dir/log/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/log/log.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"log/log.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/log/log.cpp -o CMakeFiles/cero_server.dir/log/log.cpp.s

CMakeFiles/cero_server.dir/config/config.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/config/config.cpp.o: ../config/config.cpp
CMakeFiles/cero_server.dir/config/config.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cero_server.dir/config/config.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"config/config.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/config/config.cpp.o -MF CMakeFiles/cero_server.dir/config/config.cpp.o.d -o CMakeFiles/cero_server.dir/config/config.cpp.o -c /home/coding/cpp/Cocos-Server/config/config.cpp

CMakeFiles/cero_server.dir/config/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/config/config.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"config/config.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/config/config.cpp > CMakeFiles/cero_server.dir/config/config.cpp.i

CMakeFiles/cero_server.dir/config/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/config/config.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"config/config.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/config/config.cpp -o CMakeFiles/cero_server.dir/config/config.cpp.s

CMakeFiles/cero_server.dir/config/env.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/config/env.cpp.o: ../config/env.cpp
CMakeFiles/cero_server.dir/config/env.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cero_server.dir/config/env.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"config/env.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/config/env.cpp.o -MF CMakeFiles/cero_server.dir/config/env.cpp.o.d -o CMakeFiles/cero_server.dir/config/env.cpp.o -c /home/coding/cpp/Cocos-Server/config/env.cpp

CMakeFiles/cero_server.dir/config/env.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/config/env.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"config/env.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/config/env.cpp > CMakeFiles/cero_server.dir/config/env.cpp.i

CMakeFiles/cero_server.dir/config/env.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/config/env.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"config/env.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/config/env.cpp -o CMakeFiles/cero_server.dir/config/env.cpp.s

CMakeFiles/cero_server.dir/utils/util.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/utils/util.cpp.o: ../utils/util.cpp
CMakeFiles/cero_server.dir/utils/util.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cero_server.dir/utils/util.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"utils/util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/utils/util.cpp.o -MF CMakeFiles/cero_server.dir/utils/util.cpp.o.d -o CMakeFiles/cero_server.dir/utils/util.cpp.o -c /home/coding/cpp/Cocos-Server/utils/util.cpp

CMakeFiles/cero_server.dir/utils/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/utils/util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"utils/util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/utils/util.cpp > CMakeFiles/cero_server.dir/utils/util.cpp.i

CMakeFiles/cero_server.dir/utils/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/utils/util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"utils/util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/utils/util.cpp -o CMakeFiles/cero_server.dir/utils/util.cpp.s

CMakeFiles/cero_server.dir/ceros/thread.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/ceros/thread.cpp.o: ../ceros/thread.cpp
CMakeFiles/cero_server.dir/ceros/thread.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cero_server.dir/ceros/thread.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/thread.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/ceros/thread.cpp.o -MF CMakeFiles/cero_server.dir/ceros/thread.cpp.o.d -o CMakeFiles/cero_server.dir/ceros/thread.cpp.o -c /home/coding/cpp/Cocos-Server/ceros/thread.cpp

CMakeFiles/cero_server.dir/ceros/thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/ceros/thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/thread.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/ceros/thread.cpp > CMakeFiles/cero_server.dir/ceros/thread.cpp.i

CMakeFiles/cero_server.dir/ceros/thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/ceros/thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/thread.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/ceros/thread.cpp -o CMakeFiles/cero_server.dir/ceros/thread.cpp.s

CMakeFiles/cero_server.dir/ceros/fiber.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/ceros/fiber.cpp.o: ../ceros/fiber.cpp
CMakeFiles/cero_server.dir/ceros/fiber.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/cero_server.dir/ceros/fiber.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/fiber.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/ceros/fiber.cpp.o -MF CMakeFiles/cero_server.dir/ceros/fiber.cpp.o.d -o CMakeFiles/cero_server.dir/ceros/fiber.cpp.o -c /home/coding/cpp/Cocos-Server/ceros/fiber.cpp

CMakeFiles/cero_server.dir/ceros/fiber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/ceros/fiber.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/fiber.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/ceros/fiber.cpp > CMakeFiles/cero_server.dir/ceros/fiber.cpp.i

CMakeFiles/cero_server.dir/ceros/fiber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/ceros/fiber.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/fiber.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/ceros/fiber.cpp -o CMakeFiles/cero_server.dir/ceros/fiber.cpp.s

CMakeFiles/cero_server.dir/ceros/mutex.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/ceros/mutex.cpp.o: ../ceros/mutex.cpp
CMakeFiles/cero_server.dir/ceros/mutex.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/cero_server.dir/ceros/mutex.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/mutex.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/ceros/mutex.cpp.o -MF CMakeFiles/cero_server.dir/ceros/mutex.cpp.o.d -o CMakeFiles/cero_server.dir/ceros/mutex.cpp.o -c /home/coding/cpp/Cocos-Server/ceros/mutex.cpp

CMakeFiles/cero_server.dir/ceros/mutex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/ceros/mutex.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/mutex.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/ceros/mutex.cpp > CMakeFiles/cero_server.dir/ceros/mutex.cpp.i

CMakeFiles/cero_server.dir/ceros/mutex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/ceros/mutex.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/mutex.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/ceros/mutex.cpp -o CMakeFiles/cero_server.dir/ceros/mutex.cpp.s

CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o: ../ceros/scheduler.cpp
CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/scheduler.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o -MF CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o.d -o CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o -c /home/coding/cpp/Cocos-Server/ceros/scheduler.cpp

CMakeFiles/cero_server.dir/ceros/scheduler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/ceros/scheduler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/scheduler.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/ceros/scheduler.cpp > CMakeFiles/cero_server.dir/ceros/scheduler.cpp.i

CMakeFiles/cero_server.dir/ceros/scheduler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/ceros/scheduler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"ceros/scheduler.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/ceros/scheduler.cpp -o CMakeFiles/cero_server.dir/ceros/scheduler.cpp.s

CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o: CMakeFiles/cero_server.dir/flags.make
CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o: ../utils/util/crypto_util.cpp
CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o: CMakeFiles/cero_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"utils/util/crypto_util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o -MF CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o.d -o CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o -c /home/coding/cpp/Cocos-Server/utils/util/crypto_util.cpp

CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"utils/util/crypto_util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coding/cpp/Cocos-Server/utils/util/crypto_util.cpp > CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.i

CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"utils/util/crypto_util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coding/cpp/Cocos-Server/utils/util/crypto_util.cpp -o CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.s

# Object files for target cero_server
cero_server_OBJECTS = \
"CMakeFiles/cero_server.dir/log/log.cpp.o" \
"CMakeFiles/cero_server.dir/config/config.cpp.o" \
"CMakeFiles/cero_server.dir/config/env.cpp.o" \
"CMakeFiles/cero_server.dir/utils/util.cpp.o" \
"CMakeFiles/cero_server.dir/ceros/thread.cpp.o" \
"CMakeFiles/cero_server.dir/ceros/fiber.cpp.o" \
"CMakeFiles/cero_server.dir/ceros/mutex.cpp.o" \
"CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o" \
"CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o"

# External object files for target cero_server
cero_server_EXTERNAL_OBJECTS =

../lib/libcero_server.so: CMakeFiles/cero_server.dir/log/log.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/config/config.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/config/env.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/utils/util.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/ceros/thread.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/ceros/fiber.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/ceros/mutex.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/ceros/scheduler.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/utils/util/crypto_util.cpp.o
../lib/libcero_server.so: CMakeFiles/cero_server.dir/build.make
../lib/libcero_server.so: CMakeFiles/cero_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX shared library ../lib/libcero_server.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cero_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cero_server.dir/build: ../lib/libcero_server.so
.PHONY : CMakeFiles/cero_server.dir/build

CMakeFiles/cero_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cero_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cero_server.dir/clean

CMakeFiles/cero_server.dir/depend:
	cd /home/coding/cpp/Cocos-Server/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/coding/cpp/Cocos-Server /home/coding/cpp/Cocos-Server /home/coding/cpp/Cocos-Server/cmake-build-debug /home/coding/cpp/Cocos-Server/cmake-build-debug /home/coding/cpp/Cocos-Server/cmake-build-debug/CMakeFiles/cero_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cero_server.dir/depend

