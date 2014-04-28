// KeyHook.h : main header file for the KEYHOOK application
//

#include "KeyboardHook.h"
#if !defined(AFX_KEYHOOK_H__D352F84E_496F_439F_BA6B_2C9F4F747514__INCLUDED_)
#define AFX_KEYHOOK_H__D352F84E_496F_439F_BA6B_2C9F4F747514__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CKeyHookApp:
// See KeyHook.cpp for the implementation of this class
//

class CKeyHookApp : public CWinApp
{
public:
	CKeyHookApp();
	/****************/
	CKeyboardHook m_hook;//加入钩子类作为数据成员


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CKeyHookApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CKeyHookApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP();

};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_KEYHOOK_H__D352F84E_496F_439F_BA6B_2C9F4F747514__INCLUDED_)
