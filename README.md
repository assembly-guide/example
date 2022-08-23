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

### 概览

#### 8位寄存器

```text
AL、BL、CL、DL、DIL、SIL、BPL、SPL、R8L、R9L、R10L、R11L、R12L、R13L、R14L、R15L
```

#### 16位寄存器

```text
AX、BX、CX、DX、DI、SI、BP、SP、R8W、R9W、R10W、R11W、R12W、R13W、R14W、R15W
```

#### 32位寄存器

```text
EAX、EBX、ECX、EDX、EDI、ESI、EBP、ESP、R8D、R9D、R10D、R11D、R12D、R13D、R14D、R15D
```

#### 64位寄存器

```text
RAX、RBX、RCX、RDX、RDI、RSI、RBP、RSP、R8、R9、R10、R11、R12、R13、R14、R15
```

### 通用寄存器

| 16位  | 32位  | 64位  | 说明                | 英文名称                 | 寄存器类型 |
|------|------|------|-------------------|----------------------|-------|
| AX   | EAX  | RAX  | 累加寄存器             | Accumulator Register | 数据寄存器 |
| BX   | EBX  | RBX  | 基址寄存器             | Base Register        | 数据寄存器 |
| CX   | ECX  | RCX  | 计数寄存器             | Count Register       | 数据寄存器 |
| DX   | EDX  | RDX  | 数据寄存器             | Data Register        | 数据寄存器 |
| BP   | EBP  | RBP  | 基础指针              | Base Pointer         | 指针寄存器 |
| SP   | ESP  | RSP  | 栈指针，运行时堆栈是从高到低生长的 | Stack Pointer        | 指针寄存器 |
| SI   | ESI  | RSI  | 变址寄存器             | Source Index         | 索引寄存器 |
| DI   | EDI  | RDI  | 目标变址寄存器           | Destination Index    | 索引寄存器 |

### 段寄存器

| 16位  | 说明     | 英文名称          |
|------|--------|---------------|
| CS   | 代码段寄存器 | Code Segment  |
| DS   | 数据段寄存器 | Data Segment  |
| SS   | 栈段寄存器  | Stack Segment |
| ES   | 扩展段寄存器 | Extra Segment |

### 其他寄存器

| 16位   | 32位    | 64位    | 说明        | 英文名称                | 寄存器类型 |
|-------|--------|--------|-----------|---------------------|-------|
| IP    | EIP    | RIP    | 指令指针寄存器   | Instruction Pointer | 控制寄存器 |
| FLAGS | EFLAGS | RFLAGS | 存储当前进程的状态 | Flags               | 标志寄存器 |

### 通用寄存器重叠复用

| 64位  | 32位（低） | 16位（低） | 8位（高） | 8位（低） |
|------|--------|--------|-------|-------|
| RAX  | EAX    | AX     | AH    | AL    |
| RBX  | EBX    | BX     | BH    | BL    |
| RCX  | ECX    | CX     | CH    | CL    |
| RDX  | EDX    | DX     | DH    | DL    |

### 通用寄存器存储空间（以64位RAX为例）

| 8    | 7    | 6    | 5    | 4    | 3    | 2    | 1    |
|------|------|------|------|------|------|------|------|
| RAX  | RAX  | RAX  | RAX  | RAX  | RAX  | RAX  | RAX  |
|      |      |      |      | EAX  | EAX  | EAX  | EAX  |
|      |      |      |      |      |      | AX   | AX   |
|      |      |      |      |      |      | AH   |      |
|      |      |      |      |      |      |      | AL   |