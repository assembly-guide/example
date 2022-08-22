# example

## 数据类型

### 内部数据类型

| 类型     | 说明                 |
|--------|--------------------|
| BYTE   | 8位无符号整数，B代表字节      |
| SBYTE  | 8位有符号整数，S代表有符号     |
| WORD   | 16位无符号整数           |
| SWORD  | 16位有符号整数           |
| DWORD  | 32位无符号整数，D代表双字     |
| SDWORD | 32位有符号整数，SD代表有符号双字 |
| FWORD  | 48位整数，保护模式中的远指针    |
| QWORD  | 64位整数，Q代表四字        |
| TBYTE  | 80位整数，T代表10个字节     |
| REAL4  | 32位IEEE短实数，4字节     |
| REAL8  | 64位IEEE长实数，8字节     |
| REAL10 | 80位IEEE扩展实数，10字节   |

### 传统数据伪指令

| 伪指令  | 说明           |
|------|--------------|
| DB   | 8位整数         |
| DW   | 16位整数        |
| DD   | 32位整数或实数     |
| DQ   | 64位整数或实数     |
| DT   | 定义80位整数，10字节 |

## 寄存器

| 名称   | 说明        | 英文名称                 | 寄存器类型   |
|------|-----------|----------------------|---------|
| AX   | 累加寄存器     | Accumulator Register | 通用寄存器   |
| BX   | 基址寄存器     | Base Register        | 通用寄存器   |
| CX   | 计数寄存器     | Count Register       | 通用寄存器   |
| DX   | 数据寄存器     | Data Register        | 通用寄存器   |
| BP   | 基础指针      | Base Pointer         | 索引寄存器   |
| SP   | 栈指针       | Stack Pointer        | 索引寄存器   |
| SI   | 变址寄存器     | Source Index         | 索引寄存器   |
| DI   | 目标变址寄存器   | Destination Index    | 索引寄存器   |
| IP   | 指令指针寄存器   | Instruction Pointer  | 指令指针寄存器 |
| FLAG | 存储当前进程的状态 | Flag                 | 标志寄存器   |
| CS   | 代码寄存器     | Code Segment         | 段寄存器    |
| DS   | 数据寄存器     | Data Segment         | 段寄存器    |
| SS   | 栈寄存器      | Stack Segment        | 段寄存器    |
| ES   | 其他寄存器     | Extra Segment        | 段寄存器    |

### 通用寄存器

| 64位  | 32位（低） | 16位（低） | 8位（高） | 8位（低） |
|------|--------|--------|-------|-------|
| RAX  | EAX    | AX     | AH    | AL    |
| RBX  | EBX    | BX     | BH    | BL    |
| RCX  | ECX    | CX     | CH    | CL    |
| RDX  | EDX    | DX     | DH    | DL    |

### 通用寄存器存储空间（64位）

| 8    | 7    | 6    | 5    | 4    | 3    | 2    | 1    |
|------|------|------|------|------|------|------|------|
| RAX  | RAX  | RAX  | RAX  | RAX  | RAX  | RAX  | RAX  |
|      |      |      |      | EAX  | EAX  | EAX  | EAX  |
|      |      |      |      |      |      | AX   | AX   |
|      |      |      |      |      |      | AH   |      |
|      |      |      |      |      |      |      | AL   |