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
CMAKE_COMMAND = "C:\Users\apple\AppData\Local\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Users\apple\AppData\Local\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = Z:\Desktop\github\MCDReforged_By_CPP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\MCDReforged_By_CPP.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\MCDReforged_By_CPP.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\MCDReforged_By_CPP.dir\flags.make

CMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.obj: CMakeFiles\MCDReforged_By_CPP.dir\flags.make
CMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.obj: ..\source\cppplugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MCDReforged_By_CPP.dir/source/cppplugin.cpp.obj"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.obj /FdCMakeFiles\MCDReforged_By_CPP.dir\ /FS -c Z:\Desktop\github\MCDReforged_By_CPP\source\cppplugin.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCDReforged_By_CPP.dir/source/cppplugin.cpp.i"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe > CMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E Z:\Desktop\github\MCDReforged_By_CPP\source\cppplugin.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCDReforged_By_CPP.dir/source/cppplugin.cpp.s"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.s /c Z:\Desktop\github\MCDReforged_By_CPP\source\cppplugin.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.obj: CMakeFiles\MCDReforged_By_CPP.dir\flags.make
CMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.obj: ..\source\pyplugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MCDReforged_By_CPP.dir/source/pyplugin.cpp.obj"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.obj /FdCMakeFiles\MCDReforged_By_CPP.dir\ /FS -c Z:\Desktop\github\MCDReforged_By_CPP\source\pyplugin.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCDReforged_By_CPP.dir/source/pyplugin.cpp.i"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe > CMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E Z:\Desktop\github\MCDReforged_By_CPP\source\pyplugin.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCDReforged_By_CPP.dir/source/pyplugin.cpp.s"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.s /c Z:\Desktop\github\MCDReforged_By_CPP\source\pyplugin.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.obj: CMakeFiles\MCDReforged_By_CPP.dir\flags.make
CMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.obj: ..\source\SysInit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MCDReforged_By_CPP.dir/source/SysInit.cpp.obj"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.obj /FdCMakeFiles\MCDReforged_By_CPP.dir\ /FS -c Z:\Desktop\github\MCDReforged_By_CPP\source\SysInit.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCDReforged_By_CPP.dir/source/SysInit.cpp.i"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe > CMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E Z:\Desktop\github\MCDReforged_By_CPP\source\SysInit.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCDReforged_By_CPP.dir/source/SysInit.cpp.s"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.s /c Z:\Desktop\github\MCDReforged_By_CPP\source\SysInit.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.obj: CMakeFiles\MCDReforged_By_CPP.dir\flags.make
CMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.obj: ..\MCDRCPP.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MCDReforged_By_CPP.dir/MCDRCPP.cpp.obj"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.obj /FdCMakeFiles\MCDReforged_By_CPP.dir\ /FS -c Z:\Desktop\github\MCDReforged_By_CPP\MCDRCPP.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCDReforged_By_CPP.dir/MCDRCPP.cpp.i"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe > CMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E Z:\Desktop\github\MCDReforged_By_CPP\MCDRCPP.cpp
<<

CMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCDReforged_By_CPP.dir/MCDRCPP.cpp.s"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.s /c Z:\Desktop\github\MCDReforged_By_CPP\MCDRCPP.cpp
<<

# Object files for target MCDReforged_By_CPP
MCDReforged_By_CPP_OBJECTS = \
"CMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.obj" \
"CMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.obj" \
"CMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.obj" \
"CMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.obj"

# External object files for target MCDReforged_By_CPP
MCDReforged_By_CPP_EXTERNAL_OBJECTS =

MCDReforged_By_CPP.exe: CMakeFiles\MCDReforged_By_CPP.dir\source\cppplugin.cpp.obj
MCDReforged_By_CPP.exe: CMakeFiles\MCDReforged_By_CPP.dir\source\pyplugin.cpp.obj
MCDReforged_By_CPP.exe: CMakeFiles\MCDReforged_By_CPP.dir\source\SysInit.cpp.obj
MCDReforged_By_CPP.exe: CMakeFiles\MCDReforged_By_CPP.dir\MCDRCPP.cpp.obj
MCDReforged_By_CPP.exe: CMakeFiles\MCDReforged_By_CPP.dir\build.make
MCDReforged_By_CPP.exe: CMakeFiles\MCDReforged_By_CPP.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable MCDReforged_By_CPP.exe"
	"C:\Users\apple\AppData\Local\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\MCDReforged_By_CPP.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests  -- C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1427~1.291\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\MCDReforged_By_CPP.dir\objects1.rsp @<<
 /out:MCDReforged_By_CPP.exe /implib:MCDReforged_By_CPP.lib /pdb:Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug\MCDReforged_By_CPP.pdb /version:0.0  /machine:x64 /debug /INCREMENTAL /subsystem:console   -LIBPATH:C:\Users\apple\AppData\Local\Programs\Python\Python38\libs  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\MCDReforged_By_CPP.dir\build: MCDReforged_By_CPP.exe

.PHONY : CMakeFiles\MCDReforged_By_CPP.dir\build

CMakeFiles\MCDReforged_By_CPP.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MCDReforged_By_CPP.dir\cmake_clean.cmake
.PHONY : CMakeFiles\MCDReforged_By_CPP.dir\clean

CMakeFiles\MCDReforged_By_CPP.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" Z:\Desktop\github\MCDReforged_By_CPP Z:\Desktop\github\MCDReforged_By_CPP Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug Z:\Desktop\github\MCDReforged_By_CPP\cmake-build-debug\CMakeFiles\MCDReforged_By_CPP.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\MCDReforged_By_CPP.dir\depend

