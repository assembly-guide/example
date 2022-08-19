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
