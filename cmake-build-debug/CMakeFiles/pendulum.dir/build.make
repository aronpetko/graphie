# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Aron\Documents\Coding\graphie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\pendulum.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\pendulum.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\pendulum.dir\flags.make

CMakeFiles\pendulum.dir\render\shapes\line.cpp.obj: CMakeFiles\pendulum.dir\flags.make
CMakeFiles\pendulum.dir\render\shapes\line.cpp.obj: ..\render\shapes\line.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pendulum.dir/render/shapes/line.cpp.obj"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\pendulum.dir\render\shapes\line.cpp.obj /FdCMakeFiles\pendulum.dir\ /FS -c C:\Users\Aron\Documents\Coding\graphie\render\shapes\line.cpp
<<

CMakeFiles\pendulum.dir\render\shapes\line.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pendulum.dir/render/shapes/line.cpp.i"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe > CMakeFiles\pendulum.dir\render\shapes\line.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Aron\Documents\Coding\graphie\render\shapes\line.cpp
<<

CMakeFiles\pendulum.dir\render\shapes\line.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pendulum.dir/render/shapes/line.cpp.s"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\pendulum.dir\render\shapes\line.cpp.s /c C:\Users\Aron\Documents\Coding\graphie\render\shapes\line.cpp
<<

CMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.obj: CMakeFiles\pendulum.dir\flags.make
CMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.obj: ..\render\shapes\rectangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pendulum.dir/render/shapes/rectangle.cpp.obj"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.obj /FdCMakeFiles\pendulum.dir\ /FS -c C:\Users\Aron\Documents\Coding\graphie\render\shapes\rectangle.cpp
<<

CMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pendulum.dir/render/shapes/rectangle.cpp.i"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe > CMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Aron\Documents\Coding\graphie\render\shapes\rectangle.cpp
<<

CMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pendulum.dir/render/shapes/rectangle.cpp.s"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.s /c C:\Users\Aron\Documents\Coding\graphie\render\shapes\rectangle.cpp
<<

CMakeFiles\pendulum.dir\render\shapes\point.cpp.obj: CMakeFiles\pendulum.dir\flags.make
CMakeFiles\pendulum.dir\render\shapes\point.cpp.obj: ..\render\shapes\point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pendulum.dir/render/shapes/point.cpp.obj"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\pendulum.dir\render\shapes\point.cpp.obj /FdCMakeFiles\pendulum.dir\ /FS -c C:\Users\Aron\Documents\Coding\graphie\render\shapes\point.cpp
<<

CMakeFiles\pendulum.dir\render\shapes\point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pendulum.dir/render/shapes/point.cpp.i"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe > CMakeFiles\pendulum.dir\render\shapes\point.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Aron\Documents\Coding\graphie\render\shapes\point.cpp
<<

CMakeFiles\pendulum.dir\render\shapes\point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pendulum.dir/render/shapes/point.cpp.s"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\pendulum.dir\render\shapes\point.cpp.s /c C:\Users\Aron\Documents\Coding\graphie\render\shapes\point.cpp
<<

# Object files for target pendulum
pendulum_OBJECTS = \
"CMakeFiles\pendulum.dir\render\shapes\line.cpp.obj" \
"CMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.obj" \
"CMakeFiles\pendulum.dir\render\shapes\point.cpp.obj"

# External object files for target pendulum
pendulum_EXTERNAL_OBJECTS =

pendulum.exe: CMakeFiles\pendulum.dir\render\shapes\line.cpp.obj
pendulum.exe: CMakeFiles\pendulum.dir\render\shapes\rectangle.cpp.obj
pendulum.exe: CMakeFiles\pendulum.dir\render\shapes\point.cpp.obj
pendulum.exe: CMakeFiles\pendulum.dir\build.make
pendulum.exe: CMakeFiles\pendulum.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable pendulum.exe"
	"C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\pendulum.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests  -- C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\pendulum.dir\objects1.rsp @<<
 /out:pendulum.exe /implib:pendulum.lib /pdb:C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug\pendulum.pdb /version:0.0  /machine:x64 /debug /INCREMENTAL /subsystem:console /INCREMENTAL:NO /LTCG   -LIBPATH:C:\Users\Aron\Documents\libs\sfml\lib  opengl32.lib ws2_32.lib glu32.lib sfml-graphics.lib sfml-window.lib sfml-system.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\pendulum.dir\build: pendulum.exe

.PHONY : CMakeFiles\pendulum.dir\build

CMakeFiles\pendulum.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pendulum.dir\cmake_clean.cmake
.PHONY : CMakeFiles\pendulum.dir\clean

CMakeFiles\pendulum.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Aron\Documents\Coding\graphie C:\Users\Aron\Documents\Coding\graphie C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug C:\Users\Aron\Documents\Coding\graphie\cmake-build-debug\CMakeFiles\pendulum.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\pendulum.dir\depend

