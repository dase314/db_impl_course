# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/zhongershun/db_impl_course

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhongershun/db_impl_course/build

# Include any dependencies generated for this target.
include libevent/CMakeFiles/event_core_static.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libevent/CMakeFiles/event_core_static.dir/compiler_depend.make

# Include the progress variables for this target.
include libevent/CMakeFiles/event_core_static.dir/progress.make

# Include the compile flags for this target's objects.
include libevent/CMakeFiles/event_core_static.dir/flags.make

libevent/CMakeFiles/event_core_static.dir/buffer.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/buffer.c.o: /home/zhongershun/db_impl_course/deps/libevent/buffer.c
libevent/CMakeFiles/event_core_static.dir/buffer.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libevent/CMakeFiles/event_core_static.dir/buffer.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/buffer.c.o -MF CMakeFiles/event_core_static.dir/buffer.c.o.d -o CMakeFiles/event_core_static.dir/buffer.c.o -c /home/zhongershun/db_impl_course/deps/libevent/buffer.c

libevent/CMakeFiles/event_core_static.dir/buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/buffer.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/buffer.c > CMakeFiles/event_core_static.dir/buffer.c.i

libevent/CMakeFiles/event_core_static.dir/buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/buffer.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/buffer.c -o CMakeFiles/event_core_static.dir/buffer.c.s

libevent/CMakeFiles/event_core_static.dir/bufferevent.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/bufferevent.c.o: /home/zhongershun/db_impl_course/deps/libevent/bufferevent.c
libevent/CMakeFiles/event_core_static.dir/bufferevent.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libevent/CMakeFiles/event_core_static.dir/bufferevent.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/bufferevent.c.o -MF CMakeFiles/event_core_static.dir/bufferevent.c.o.d -o CMakeFiles/event_core_static.dir/bufferevent.c.o -c /home/zhongershun/db_impl_course/deps/libevent/bufferevent.c

libevent/CMakeFiles/event_core_static.dir/bufferevent.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/bufferevent.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/bufferevent.c > CMakeFiles/event_core_static.dir/bufferevent.c.i

libevent/CMakeFiles/event_core_static.dir/bufferevent.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/bufferevent.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/bufferevent.c -o CMakeFiles/event_core_static.dir/bufferevent.c.s

libevent/CMakeFiles/event_core_static.dir/bufferevent_filter.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/bufferevent_filter.c.o: /home/zhongershun/db_impl_course/deps/libevent/bufferevent_filter.c
libevent/CMakeFiles/event_core_static.dir/bufferevent_filter.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libevent/CMakeFiles/event_core_static.dir/bufferevent_filter.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/bufferevent_filter.c.o -MF CMakeFiles/event_core_static.dir/bufferevent_filter.c.o.d -o CMakeFiles/event_core_static.dir/bufferevent_filter.c.o -c /home/zhongershun/db_impl_course/deps/libevent/bufferevent_filter.c

libevent/CMakeFiles/event_core_static.dir/bufferevent_filter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/bufferevent_filter.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/bufferevent_filter.c > CMakeFiles/event_core_static.dir/bufferevent_filter.c.i

libevent/CMakeFiles/event_core_static.dir/bufferevent_filter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/bufferevent_filter.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/bufferevent_filter.c -o CMakeFiles/event_core_static.dir/bufferevent_filter.c.s

libevent/CMakeFiles/event_core_static.dir/bufferevent_pair.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/bufferevent_pair.c.o: /home/zhongershun/db_impl_course/deps/libevent/bufferevent_pair.c
libevent/CMakeFiles/event_core_static.dir/bufferevent_pair.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libevent/CMakeFiles/event_core_static.dir/bufferevent_pair.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/bufferevent_pair.c.o -MF CMakeFiles/event_core_static.dir/bufferevent_pair.c.o.d -o CMakeFiles/event_core_static.dir/bufferevent_pair.c.o -c /home/zhongershun/db_impl_course/deps/libevent/bufferevent_pair.c

libevent/CMakeFiles/event_core_static.dir/bufferevent_pair.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/bufferevent_pair.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/bufferevent_pair.c > CMakeFiles/event_core_static.dir/bufferevent_pair.c.i

libevent/CMakeFiles/event_core_static.dir/bufferevent_pair.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/bufferevent_pair.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/bufferevent_pair.c -o CMakeFiles/event_core_static.dir/bufferevent_pair.c.s

libevent/CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o: /home/zhongershun/db_impl_course/deps/libevent/bufferevent_ratelim.c
libevent/CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libevent/CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o -MF CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o.d -o CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o -c /home/zhongershun/db_impl_course/deps/libevent/bufferevent_ratelim.c

libevent/CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/bufferevent_ratelim.c > CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.i

libevent/CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/bufferevent_ratelim.c -o CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.s

libevent/CMakeFiles/event_core_static.dir/bufferevent_sock.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/bufferevent_sock.c.o: /home/zhongershun/db_impl_course/deps/libevent/bufferevent_sock.c
libevent/CMakeFiles/event_core_static.dir/bufferevent_sock.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libevent/CMakeFiles/event_core_static.dir/bufferevent_sock.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/bufferevent_sock.c.o -MF CMakeFiles/event_core_static.dir/bufferevent_sock.c.o.d -o CMakeFiles/event_core_static.dir/bufferevent_sock.c.o -c /home/zhongershun/db_impl_course/deps/libevent/bufferevent_sock.c

libevent/CMakeFiles/event_core_static.dir/bufferevent_sock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/bufferevent_sock.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/bufferevent_sock.c > CMakeFiles/event_core_static.dir/bufferevent_sock.c.i

libevent/CMakeFiles/event_core_static.dir/bufferevent_sock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/bufferevent_sock.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/bufferevent_sock.c -o CMakeFiles/event_core_static.dir/bufferevent_sock.c.s

libevent/CMakeFiles/event_core_static.dir/event.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/event.c.o: /home/zhongershun/db_impl_course/deps/libevent/event.c
libevent/CMakeFiles/event_core_static.dir/event.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object libevent/CMakeFiles/event_core_static.dir/event.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/event.c.o -MF CMakeFiles/event_core_static.dir/event.c.o.d -o CMakeFiles/event_core_static.dir/event.c.o -c /home/zhongershun/db_impl_course/deps/libevent/event.c

libevent/CMakeFiles/event_core_static.dir/event.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/event.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/event.c > CMakeFiles/event_core_static.dir/event.c.i

libevent/CMakeFiles/event_core_static.dir/event.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/event.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/event.c -o CMakeFiles/event_core_static.dir/event.c.s

libevent/CMakeFiles/event_core_static.dir/evmap.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/evmap.c.o: /home/zhongershun/db_impl_course/deps/libevent/evmap.c
libevent/CMakeFiles/event_core_static.dir/evmap.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object libevent/CMakeFiles/event_core_static.dir/evmap.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/evmap.c.o -MF CMakeFiles/event_core_static.dir/evmap.c.o.d -o CMakeFiles/event_core_static.dir/evmap.c.o -c /home/zhongershun/db_impl_course/deps/libevent/evmap.c

libevent/CMakeFiles/event_core_static.dir/evmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/evmap.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/evmap.c > CMakeFiles/event_core_static.dir/evmap.c.i

libevent/CMakeFiles/event_core_static.dir/evmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/evmap.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/evmap.c -o CMakeFiles/event_core_static.dir/evmap.c.s

libevent/CMakeFiles/event_core_static.dir/evthread.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/evthread.c.o: /home/zhongershun/db_impl_course/deps/libevent/evthread.c
libevent/CMakeFiles/event_core_static.dir/evthread.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object libevent/CMakeFiles/event_core_static.dir/evthread.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/evthread.c.o -MF CMakeFiles/event_core_static.dir/evthread.c.o.d -o CMakeFiles/event_core_static.dir/evthread.c.o -c /home/zhongershun/db_impl_course/deps/libevent/evthread.c

libevent/CMakeFiles/event_core_static.dir/evthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/evthread.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/evthread.c > CMakeFiles/event_core_static.dir/evthread.c.i

libevent/CMakeFiles/event_core_static.dir/evthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/evthread.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/evthread.c -o CMakeFiles/event_core_static.dir/evthread.c.s

libevent/CMakeFiles/event_core_static.dir/evutil.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/evutil.c.o: /home/zhongershun/db_impl_course/deps/libevent/evutil.c
libevent/CMakeFiles/event_core_static.dir/evutil.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object libevent/CMakeFiles/event_core_static.dir/evutil.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/evutil.c.o -MF CMakeFiles/event_core_static.dir/evutil.c.o.d -o CMakeFiles/event_core_static.dir/evutil.c.o -c /home/zhongershun/db_impl_course/deps/libevent/evutil.c

libevent/CMakeFiles/event_core_static.dir/evutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/evutil.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/evutil.c > CMakeFiles/event_core_static.dir/evutil.c.i

libevent/CMakeFiles/event_core_static.dir/evutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/evutil.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/evutil.c -o CMakeFiles/event_core_static.dir/evutil.c.s

libevent/CMakeFiles/event_core_static.dir/evutil_rand.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/evutil_rand.c.o: /home/zhongershun/db_impl_course/deps/libevent/evutil_rand.c
libevent/CMakeFiles/event_core_static.dir/evutil_rand.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object libevent/CMakeFiles/event_core_static.dir/evutil_rand.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/evutil_rand.c.o -MF CMakeFiles/event_core_static.dir/evutil_rand.c.o.d -o CMakeFiles/event_core_static.dir/evutil_rand.c.o -c /home/zhongershun/db_impl_course/deps/libevent/evutil_rand.c

libevent/CMakeFiles/event_core_static.dir/evutil_rand.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/evutil_rand.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/evutil_rand.c > CMakeFiles/event_core_static.dir/evutil_rand.c.i

libevent/CMakeFiles/event_core_static.dir/evutil_rand.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/evutil_rand.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/evutil_rand.c -o CMakeFiles/event_core_static.dir/evutil_rand.c.s

libevent/CMakeFiles/event_core_static.dir/evutil_time.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/evutil_time.c.o: /home/zhongershun/db_impl_course/deps/libevent/evutil_time.c
libevent/CMakeFiles/event_core_static.dir/evutil_time.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object libevent/CMakeFiles/event_core_static.dir/evutil_time.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/evutil_time.c.o -MF CMakeFiles/event_core_static.dir/evutil_time.c.o.d -o CMakeFiles/event_core_static.dir/evutil_time.c.o -c /home/zhongershun/db_impl_course/deps/libevent/evutil_time.c

libevent/CMakeFiles/event_core_static.dir/evutil_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/evutil_time.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/evutil_time.c > CMakeFiles/event_core_static.dir/evutil_time.c.i

libevent/CMakeFiles/event_core_static.dir/evutil_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/evutil_time.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/evutil_time.c -o CMakeFiles/event_core_static.dir/evutil_time.c.s

libevent/CMakeFiles/event_core_static.dir/listener.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/listener.c.o: /home/zhongershun/db_impl_course/deps/libevent/listener.c
libevent/CMakeFiles/event_core_static.dir/listener.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object libevent/CMakeFiles/event_core_static.dir/listener.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/listener.c.o -MF CMakeFiles/event_core_static.dir/listener.c.o.d -o CMakeFiles/event_core_static.dir/listener.c.o -c /home/zhongershun/db_impl_course/deps/libevent/listener.c

libevent/CMakeFiles/event_core_static.dir/listener.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/listener.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/listener.c > CMakeFiles/event_core_static.dir/listener.c.i

libevent/CMakeFiles/event_core_static.dir/listener.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/listener.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/listener.c -o CMakeFiles/event_core_static.dir/listener.c.s

libevent/CMakeFiles/event_core_static.dir/log.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/log.c.o: /home/zhongershun/db_impl_course/deps/libevent/log.c
libevent/CMakeFiles/event_core_static.dir/log.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object libevent/CMakeFiles/event_core_static.dir/log.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/log.c.o -MF CMakeFiles/event_core_static.dir/log.c.o.d -o CMakeFiles/event_core_static.dir/log.c.o -c /home/zhongershun/db_impl_course/deps/libevent/log.c

libevent/CMakeFiles/event_core_static.dir/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/log.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/log.c > CMakeFiles/event_core_static.dir/log.c.i

libevent/CMakeFiles/event_core_static.dir/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/log.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/log.c -o CMakeFiles/event_core_static.dir/log.c.s

libevent/CMakeFiles/event_core_static.dir/signal.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/signal.c.o: /home/zhongershun/db_impl_course/deps/libevent/signal.c
libevent/CMakeFiles/event_core_static.dir/signal.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object libevent/CMakeFiles/event_core_static.dir/signal.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/signal.c.o -MF CMakeFiles/event_core_static.dir/signal.c.o.d -o CMakeFiles/event_core_static.dir/signal.c.o -c /home/zhongershun/db_impl_course/deps/libevent/signal.c

libevent/CMakeFiles/event_core_static.dir/signal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/signal.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/signal.c > CMakeFiles/event_core_static.dir/signal.c.i

libevent/CMakeFiles/event_core_static.dir/signal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/signal.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/signal.c -o CMakeFiles/event_core_static.dir/signal.c.s

libevent/CMakeFiles/event_core_static.dir/strlcpy.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/strlcpy.c.o: /home/zhongershun/db_impl_course/deps/libevent/strlcpy.c
libevent/CMakeFiles/event_core_static.dir/strlcpy.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object libevent/CMakeFiles/event_core_static.dir/strlcpy.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/strlcpy.c.o -MF CMakeFiles/event_core_static.dir/strlcpy.c.o.d -o CMakeFiles/event_core_static.dir/strlcpy.c.o -c /home/zhongershun/db_impl_course/deps/libevent/strlcpy.c

libevent/CMakeFiles/event_core_static.dir/strlcpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/strlcpy.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/strlcpy.c > CMakeFiles/event_core_static.dir/strlcpy.c.i

libevent/CMakeFiles/event_core_static.dir/strlcpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/strlcpy.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/strlcpy.c -o CMakeFiles/event_core_static.dir/strlcpy.c.s

libevent/CMakeFiles/event_core_static.dir/select.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/select.c.o: /home/zhongershun/db_impl_course/deps/libevent/select.c
libevent/CMakeFiles/event_core_static.dir/select.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object libevent/CMakeFiles/event_core_static.dir/select.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/select.c.o -MF CMakeFiles/event_core_static.dir/select.c.o.d -o CMakeFiles/event_core_static.dir/select.c.o -c /home/zhongershun/db_impl_course/deps/libevent/select.c

libevent/CMakeFiles/event_core_static.dir/select.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/select.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/select.c > CMakeFiles/event_core_static.dir/select.c.i

libevent/CMakeFiles/event_core_static.dir/select.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/select.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/select.c -o CMakeFiles/event_core_static.dir/select.c.s

libevent/CMakeFiles/event_core_static.dir/poll.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/poll.c.o: /home/zhongershun/db_impl_course/deps/libevent/poll.c
libevent/CMakeFiles/event_core_static.dir/poll.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object libevent/CMakeFiles/event_core_static.dir/poll.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/poll.c.o -MF CMakeFiles/event_core_static.dir/poll.c.o.d -o CMakeFiles/event_core_static.dir/poll.c.o -c /home/zhongershun/db_impl_course/deps/libevent/poll.c

libevent/CMakeFiles/event_core_static.dir/poll.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/poll.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/poll.c > CMakeFiles/event_core_static.dir/poll.c.i

libevent/CMakeFiles/event_core_static.dir/poll.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/poll.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/poll.c -o CMakeFiles/event_core_static.dir/poll.c.s

libevent/CMakeFiles/event_core_static.dir/epoll.c.o: libevent/CMakeFiles/event_core_static.dir/flags.make
libevent/CMakeFiles/event_core_static.dir/epoll.c.o: /home/zhongershun/db_impl_course/deps/libevent/epoll.c
libevent/CMakeFiles/event_core_static.dir/epoll.c.o: libevent/CMakeFiles/event_core_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object libevent/CMakeFiles/event_core_static.dir/epoll.c.o"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libevent/CMakeFiles/event_core_static.dir/epoll.c.o -MF CMakeFiles/event_core_static.dir/epoll.c.o.d -o CMakeFiles/event_core_static.dir/epoll.c.o -c /home/zhongershun/db_impl_course/deps/libevent/epoll.c

libevent/CMakeFiles/event_core_static.dir/epoll.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_core_static.dir/epoll.c.i"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhongershun/db_impl_course/deps/libevent/epoll.c > CMakeFiles/event_core_static.dir/epoll.c.i

libevent/CMakeFiles/event_core_static.dir/epoll.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_core_static.dir/epoll.c.s"
	cd /home/zhongershun/db_impl_course/build/libevent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhongershun/db_impl_course/deps/libevent/epoll.c -o CMakeFiles/event_core_static.dir/epoll.c.s

# Object files for target event_core_static
event_core_static_OBJECTS = \
"CMakeFiles/event_core_static.dir/buffer.c.o" \
"CMakeFiles/event_core_static.dir/bufferevent.c.o" \
"CMakeFiles/event_core_static.dir/bufferevent_filter.c.o" \
"CMakeFiles/event_core_static.dir/bufferevent_pair.c.o" \
"CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o" \
"CMakeFiles/event_core_static.dir/bufferevent_sock.c.o" \
"CMakeFiles/event_core_static.dir/event.c.o" \
"CMakeFiles/event_core_static.dir/evmap.c.o" \
"CMakeFiles/event_core_static.dir/evthread.c.o" \
"CMakeFiles/event_core_static.dir/evutil.c.o" \
"CMakeFiles/event_core_static.dir/evutil_rand.c.o" \
"CMakeFiles/event_core_static.dir/evutil_time.c.o" \
"CMakeFiles/event_core_static.dir/listener.c.o" \
"CMakeFiles/event_core_static.dir/log.c.o" \
"CMakeFiles/event_core_static.dir/signal.c.o" \
"CMakeFiles/event_core_static.dir/strlcpy.c.o" \
"CMakeFiles/event_core_static.dir/select.c.o" \
"CMakeFiles/event_core_static.dir/poll.c.o" \
"CMakeFiles/event_core_static.dir/epoll.c.o"

# External object files for target event_core_static
event_core_static_EXTERNAL_OBJECTS =

lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/buffer.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/bufferevent.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/bufferevent_filter.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/bufferevent_pair.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/bufferevent_ratelim.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/bufferevent_sock.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/event.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/evmap.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/evthread.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/evutil.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/evutil_rand.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/evutil_time.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/listener.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/log.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/signal.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/strlcpy.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/select.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/poll.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/epoll.c.o
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/build.make
lib/libevent_core.a: libevent/CMakeFiles/event_core_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhongershun/db_impl_course/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking C static library ../lib/libevent_core.a"
	cd /home/zhongershun/db_impl_course/build/libevent && $(CMAKE_COMMAND) -P CMakeFiles/event_core_static.dir/cmake_clean_target.cmake
	cd /home/zhongershun/db_impl_course/build/libevent && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/event_core_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libevent/CMakeFiles/event_core_static.dir/build: lib/libevent_core.a
.PHONY : libevent/CMakeFiles/event_core_static.dir/build

libevent/CMakeFiles/event_core_static.dir/clean:
	cd /home/zhongershun/db_impl_course/build/libevent && $(CMAKE_COMMAND) -P CMakeFiles/event_core_static.dir/cmake_clean.cmake
.PHONY : libevent/CMakeFiles/event_core_static.dir/clean

libevent/CMakeFiles/event_core_static.dir/depend:
	cd /home/zhongershun/db_impl_course/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhongershun/db_impl_course /home/zhongershun/db_impl_course/deps/libevent /home/zhongershun/db_impl_course/build /home/zhongershun/db_impl_course/build/libevent /home/zhongershun/db_impl_course/build/libevent/CMakeFiles/event_core_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libevent/CMakeFiles/event_core_static.dir/depend

