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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pasha/Downloads/natalie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pasha/Downloads/natalie/build

# Include any dependencies generated for this target.
include CMakeFiles/make-graphs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/make-graphs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/make-graphs.dir/flags.make

CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o: ../src/makegraphs.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o -c /home/pasha/Downloads/natalie/src/makegraphs.cpp

CMakeFiles/make-graphs.dir/src/makegraphs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/make-graphs.dir/src/makegraphs.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pasha/Downloads/natalie/src/makegraphs.cpp > CMakeFiles/make-graphs.dir/src/makegraphs.cpp.i

CMakeFiles/make-graphs.dir/src/makegraphs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/make-graphs.dir/src/makegraphs.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pasha/Downloads/natalie/src/makegraphs.cpp -o CMakeFiles/make-graphs.dir/src/makegraphs.cpp.s

CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o.requires

CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o.provides: CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o.provides

CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o.provides.build: CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o

CMakeFiles/make-graphs.dir/src/verbose.cpp.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/verbose.cpp.o: ../src/verbose.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/make-graphs.dir/src/verbose.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/make-graphs.dir/src/verbose.cpp.o -c /home/pasha/Downloads/natalie/src/verbose.cpp

CMakeFiles/make-graphs.dir/src/verbose.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/make-graphs.dir/src/verbose.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pasha/Downloads/natalie/src/verbose.cpp > CMakeFiles/make-graphs.dir/src/verbose.cpp.i

CMakeFiles/make-graphs.dir/src/verbose.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/make-graphs.dir/src/verbose.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pasha/Downloads/natalie/src/verbose.cpp -o CMakeFiles/make-graphs.dir/src/verbose.cpp.s

CMakeFiles/make-graphs.dir/src/verbose.cpp.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/verbose.cpp.o.requires

CMakeFiles/make-graphs.dir/src/verbose.cpp.o.provides: CMakeFiles/make-graphs.dir/src/verbose.cpp.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/verbose.cpp.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/verbose.cpp.o.provides

CMakeFiles/make-graphs.dir/src/verbose.cpp.o.provides.build: CMakeFiles/make-graphs.dir/src/verbose.cpp.o

CMakeFiles/make-graphs.dir/src/webserver.cpp.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/webserver.cpp.o: ../src/webserver.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/make-graphs.dir/src/webserver.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/make-graphs.dir/src/webserver.cpp.o -c /home/pasha/Downloads/natalie/src/webserver.cpp

CMakeFiles/make-graphs.dir/src/webserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/make-graphs.dir/src/webserver.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pasha/Downloads/natalie/src/webserver.cpp > CMakeFiles/make-graphs.dir/src/webserver.cpp.i

CMakeFiles/make-graphs.dir/src/webserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/make-graphs.dir/src/webserver.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pasha/Downloads/natalie/src/webserver.cpp -o CMakeFiles/make-graphs.dir/src/webserver.cpp.s

CMakeFiles/make-graphs.dir/src/webserver.cpp.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/webserver.cpp.o.requires

CMakeFiles/make-graphs.dir/src/webserver.cpp.o.provides: CMakeFiles/make-graphs.dir/src/webserver.cpp.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/webserver.cpp.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/webserver.cpp.o.provides

CMakeFiles/make-graphs.dir/src/webserver.cpp.o.provides.build: CMakeFiles/make-graphs.dir/src/webserver.cpp.o

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o: ../src/externlib/tinyxml/tinystr.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o -c /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinystr.cpp

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinystr.cpp > CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.i

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinystr.cpp -o CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.s

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o.requires

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o.provides: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o.provides

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o.provides.build: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o: ../src/externlib/tinyxml/tinyxml.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o -c /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxml.cpp

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxml.cpp > CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.i

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxml.cpp -o CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.s

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o.requires

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o.provides: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o.provides

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o.provides.build: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o: ../src/externlib/tinyxml/tinyxmlerror.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o -c /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxmlerror.cpp

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxmlerror.cpp > CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.i

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxmlerror.cpp -o CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.s

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o.requires

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o.provides: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o.provides

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o.provides.build: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o: ../src/externlib/tinyxml/tinyxmlparser.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o -c /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxmlparser.cpp

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxmlparser.cpp > CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.i

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pasha/Downloads/natalie/src/externlib/tinyxml/tinyxmlparser.cpp -o CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.s

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o.requires

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o.provides: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o.provides

CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o.provides.build: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o: ../src/externlib/gml-parser/gml_parser.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o   -c /home/pasha/Downloads/natalie/src/externlib/gml-parser/gml_parser.c

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pasha/Downloads/natalie/src/externlib/gml-parser/gml_parser.c > CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.i

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pasha/Downloads/natalie/src/externlib/gml-parser/gml_parser.c -o CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.s

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o.requires

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o.provides: CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o.provides

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o.provides.build: CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o: CMakeFiles/make-graphs.dir/flags.make
CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o: ../src/externlib/gml-parser/gml_scanner.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pasha/Downloads/natalie/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o   -c /home/pasha/Downloads/natalie/src/externlib/gml-parser/gml_scanner.c

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pasha/Downloads/natalie/src/externlib/gml-parser/gml_scanner.c > CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.i

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pasha/Downloads/natalie/src/externlib/gml-parser/gml_scanner.c -o CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.s

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o.requires:
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o.requires

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o.provides: CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o.requires
	$(MAKE) -f CMakeFiles/make-graphs.dir/build.make CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o.provides.build
.PHONY : CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o.provides

CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o.provides.build: CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o

# Object files for target make-graphs
make__graphs_OBJECTS = \
"CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o" \
"CMakeFiles/make-graphs.dir/src/verbose.cpp.o" \
"CMakeFiles/make-graphs.dir/src/webserver.cpp.o" \
"CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o" \
"CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o" \
"CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o" \
"CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o" \
"CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o" \
"CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o"

# External object files for target make-graphs
make__graphs_EXTERNAL_OBJECTS =

make-graphs: CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o
make-graphs: CMakeFiles/make-graphs.dir/src/verbose.cpp.o
make-graphs: CMakeFiles/make-graphs.dir/src/webserver.cpp.o
make-graphs: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o
make-graphs: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o
make-graphs: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o
make-graphs: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o
make-graphs: CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o
make-graphs: CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o
make-graphs: CMakeFiles/make-graphs.dir/build.make
make-graphs: CMakeFiles/make-graphs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable make-graphs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/make-graphs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/make-graphs.dir/build: make-graphs
.PHONY : CMakeFiles/make-graphs.dir/build

CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/makegraphs.cpp.o.requires
CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/verbose.cpp.o.requires
CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/webserver.cpp.o.requires
CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinystr.cpp.o.requires
CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxml.cpp.o.requires
CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlerror.cpp.o.requires
CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/externlib/tinyxml/tinyxmlparser.cpp.o.requires
CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_parser.c.o.requires
CMakeFiles/make-graphs.dir/requires: CMakeFiles/make-graphs.dir/src/externlib/gml-parser/gml_scanner.c.o.requires
.PHONY : CMakeFiles/make-graphs.dir/requires

CMakeFiles/make-graphs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/make-graphs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/make-graphs.dir/clean

CMakeFiles/make-graphs.dir/depend:
	cd /home/pasha/Downloads/natalie/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pasha/Downloads/natalie /home/pasha/Downloads/natalie /home/pasha/Downloads/natalie/build /home/pasha/Downloads/natalie/build /home/pasha/Downloads/natalie/build/CMakeFiles/make-graphs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/make-graphs.dir/depend

