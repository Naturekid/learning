# Microsoft Developer Studio Generated NMAKE File, Based on KeyboardHook.dsp
!IF $(CFG)" == "
CFG=KeyboardHook - Win32 Debug
!MESSAGE No configuration specified. Defaulting to KeyboardHook - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "KeyboardHook - Win32 Release" && "$(CFG)" != "KeyboardHook - Win32 Debug"
!MESSAGE 指定的配置 "$(CFG)" 无效.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "KeyboardHook.mak" CFG="KeyboardHook - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "KeyboardHook - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "KeyboardHook - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF $(OS)" == "Windows_NT
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "KeyboardHook - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# 开始自定义宏
OutDir=.\Release
# 结束自定义宏

ALL : "$(OUTDIR)\KeyboardHook.dll"


CLEAN :
	-@erase "$(INTDIR)\KeyboardHook.obj"
	-@erase "$(INTDIR)\KeyboardHook.pch"
	-@erase "$(INTDIR)\KeyboardHook.res"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\KeyboardHook.dll"
	-@erase "$(OUTDIR)\KeyboardHook.exp"
	-@erase "$(OUTDIR)\KeyboardHook.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\KeyboardHook.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\KeyboardHook.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\KeyboardHook.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\KeyboardHook.pdb" /machine:I386 /def:".\KeyboardHook.def" /out:"$(OUTDIR)\KeyboardHook.dll" /implib:"$(OUTDIR)\KeyboardHook.lib" 
DEF_FILE= \
	".\KeyboardHook.def"
LINK32_OBJS= \
	"$(INTDIR)\KeyboardHook.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\KeyboardHook.res"

"$(OUTDIR)\KeyboardHook.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "KeyboardHook - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# 开始自定义宏
OutDir=.\Debug
# 结束自定义宏

ALL : "$(OUTDIR)\KeyboardHook.dll"


CLEAN :
	-@erase "$(INTDIR)\KeyboardHook.obj"
	-@erase "$(INTDIR)\KeyboardHook.pch"
	-@erase "$(INTDIR)\KeyboardHook.res"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\KeyboardHook.dll"
	-@erase "$(OUTDIR)\KeyboardHook.exp"
	-@erase "$(OUTDIR)\KeyboardHook.ilk"
	-@erase "$(OUTDIR)\KeyboardHook.lib"
	-@erase "$(OUTDIR)\KeyboardHook.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\KeyboardHook.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\KeyboardHook.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\KeyboardHook.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\KeyboardHook.pdb" /debug /machine:I386 /def:".\KeyboardHook.def" /out:"$(OUTDIR)\KeyboardHook.dll" /implib:"$(OUTDIR)\KeyboardHook.lib" /pdbtype:sept 
DEF_FILE= \
	".\KeyboardHook.def"
LINK32_OBJS= \
	"$(INTDIR)\KeyboardHook.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\KeyboardHook.res"

"$(OUTDIR)\KeyboardHook.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("KeyboardHook.dep")
!INCLUDE "KeyboardHook.dep"
!ELSE 
!MESSAGE Warning: cannot find "KeyboardHook.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "KeyboardHook - Win32 Release" || "$(CFG)" == "KeyboardHook - Win32 Debug"
SOURCE=.\KeyboardHook.cpp

"$(INTDIR)\KeyboardHook.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\KeyboardHook.pch"


SOURCE=.\KeyboardHook.rc

"$(INTDIR)\KeyboardHook.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "KeyboardHook - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\KeyboardHook.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\KeyboardHook.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "KeyboardHook - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\KeyboardHook.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\KeyboardHook.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

