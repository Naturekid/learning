/*********************my****************************/
class AFX_EXT_CLASS CKeyboardHook:public CObject
{
public:
	CKeyboardHook();//�����๹�캯��
	virtual ~CKeyboardHook();//��������
	BOOL StartHook();//��װ���ӵĺ���
	BOOL StopHook();//ж�ع��ӵĺ���
};
/*************************************************/