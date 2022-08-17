;64位程序基础模板

ExitProcess PROTO ;定义ExitProcess函数的原型

.DATA
	;定义数据

.CODE
main_t PROC
	;业务逻辑代码

	MOV ECX,0 ;设置程序退出返回值为0
	CALL ExitProcess ;程序退出
main_t ENDP
END ;END伪指令标记程序的最后一行