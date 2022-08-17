;32位程序基础模板

.386 ;表示当前是一个32位程序
.MODEL FLAT,STDCALL ;定义程序的内存模式为平面存储模式FLAT，以及子程序的调用规范为STDCALL
.STACK 4096 ;为运行时堆栈保留4096个字节的内存

ExitProcess PROTO,dwExitCode:DWORD ;定义ExitProcess函数的原型，dwExitCode为输入参数

.DATA
	;定义数据

.CODE
main_t PROC
	;业务逻辑代码

	INVOKE ExitProcess,0 ;程序退出
main_t ENDP
END main_t ;END伪指令标记程序的最后一行