# Microsoft Developer Studio Generated NMAKE File, Based on KeyHook.dsp
!IF $(CFG)" == "
CFG=KeyHook - Win32 Debug
!MESSAGE No configuration specified. Defaulting to KeyHook - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "KeyHook - Win32 Release" && "$(CFG)" != "KeyHook - Win32 Debug"
!MESSAGE 指定的配置 "$(CFG)" 无效.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "KeyHook.mak" CFG="KeyHook - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "KeyHook - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "KeyHook - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF $(OS)" == "Windows_NT
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "KeyHook - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# 开始自定义宏
OutDir=.\Release
# 结束自定义宏

ALL : "$(OUTDIR)\KeyHook.exe"


CLEAN :
	-@erase "$(INTDIR)\KeyHook.obj"
	-@erase "$(INTDIR)\KeyHook.pch"
	-@erase "$(INTDIR)\KeyHook.res"
	-@erase "$(INTDIR)\KeyHookDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\KeyHook.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\KeyHook.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\KeyHook.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\KeyHook.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\KeyHook.pdb" /machine:I386 /out:"$(OUTDIR)\KeyHook.exe" 
LINK32_OBJS= \
	"$(INTDIR)\KeyHook.obj" \
	"$(INTDIR)\KeyHookDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\KeyHook.res"

"$(OUTDIR)\KeyHook.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "KeyHook - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# 开始自定义宏
OutDir=.\Debug
# 结束自定义宏

ALL : "$(OUTDIR)\KeyHook.exe"


CLEAN :
	-@erase "$(INTDIR)\KeyHook.obj"
	-@erase "$(INTDIR)\KeyHook.pch"
	-@erase "$(INTDIR)\KeyHook.res"
	-@erase "$(INTDIR)\KeyHookDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\KeyHook.exe"
	-@erase "$(OUTDIR)\KeyHook.ilk"
	-@erase "$(OUTDIR)\KeyHook.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\KeyHook.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\KeyHook.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\KeyHook.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=F:\coding\Hacker\KeyHook\KeyboardHook.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\KeyHook.pdb" /debug /machine:I386 /out:"$(OUTDIR)\KeyHook.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\KeyHook.obj" \
	"$(INTDIR)\KeyHookDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\KeyHook.res"

"$(OUTDIR)\KeyHook.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("KeyHook.dep")
!INCLUDE "KeyHook.dep"
!ELSE 
!MESSAGE Warning: cannot find "KeyHook.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "KeyHook - Win32 Release" || "$(CFG)" == "KeyHook - Win32 Debug"
SOURCE=.\KeyHook.cpp

"$(INTDIR)\KeyHook.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\KeyHook.pch"


SOURCE=.\KeyHook.rc

"$(INTDIR)\KeyHook.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\KeyHookDlg.cpp

"$(INTDIR)\KeyHookDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\KeyHook.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "KeyHook - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\KeyHook.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\KeyHook.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "KeyHook - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\KeyHook.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\KeyHook.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

