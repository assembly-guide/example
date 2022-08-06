;32位程序基础模板

.386
.MODEL FLAT,STDCALL
.STACK 4096

ExitProcess PROTO,dwExitCode:DWORD

.DATA
	;定义数据

.CODE
main_t PROC
	;业务逻辑代码

	INVOKE ExitProcess,0 ;程序退出
main_t ENDP
END main_t