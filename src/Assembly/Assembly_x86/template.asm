;32λ�������ģ��

.386 ;��ʾ��ǰ��һ��32λ����
.MODEL FLAT,STDCALL ;���������ڴ�ģʽΪƽ��洢ģʽFLAT���Լ��ӳ���ĵ��ù淶ΪSTDCALL
.STACK 4096 ;Ϊ����ʱ��ջ����4096���ֽڵ��ڴ�

ExitProcess PROTO,dwExitCode:DWORD ;����ExitProcess������ԭ�ͣ�dwExitCodeΪ�������

.DATA
	;��������

.CODE
main_t PROC
	;ҵ���߼�����

	INVOKE ExitProcess,0 ;�����˳�
main_t ENDP
END main_t ;ENDαָ���ǳ�������һ��