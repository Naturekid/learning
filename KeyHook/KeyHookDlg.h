// KeyHookDlg.h : header file
//

//#include "KeyboardHook.h"//自定义的头文件

#if !defined(AFX_KEYHOOKDLG_H__CD94A4CE_7B78_421D_8B76_563BB11C23FC__INCLUDED_)
#define AFX_KEYHOOKDLG_H__CD94A4CE_7B78_421D_8B76_563BB11C23FC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CKeyHookDlg dialog

class CKeyHookDlg : public CDialog
{
// Construction
public:
	CKeyHookDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CKeyHookDlg)
	enum { IDD = IDD_KEYHOOK_DIALOG };
	CEdit	m_editMultiLine;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CKeyHookDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CKeyHookDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	virtual void OnOK();
	afx_msg void OnHook();
	virtual void OnCancel();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

//加入私有数据成员
//private:
//	CKeyboardHook m_hook;//加入钩子类作为数据成员

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_KEYHOOKDLG_H__CD94A4CE_7B78_421D_8B76_563BB11C23FC__INCLUDED_)
