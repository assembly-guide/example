;32λ�������ģ��

.386
.MODEL FLAT,STDCALL
.STACK 4096

ExitProcess PROTO,dwExitCode:DWORD

.DATA
	;��������

.CODE
main_t PROC
	;ҵ���߼�����

	INVOKE ExitProcess,0 ;�����˳�
main_t ENDP
END main_t