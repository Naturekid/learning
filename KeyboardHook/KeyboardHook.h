/*********************my****************************/
class AFX_EXT_CLASS CKeyboardHook:public CObject
{
public:
	CKeyboardHook();//钩子类构造函数
	virtual ~CKeyboardHook();//析构函数
	BOOL StartHook();//安装钩子的函数
	BOOL StopHook();//卸载钩子的函数
};
/*************************************************/