# Lab 6: VHDL Code for Combinational Circuits (Code Converters)

## Objective
 To design and simulate a BCD-to-Excess-3 code converter in VHDL.
 To design and simulate a Binary-to-Gray code converter in VHDL.

---

## Theory & Reference Tables

### 1. BCD to Excess-3 Converter
Excess-3 (XS-3) is a non-weighted Binary Coded Decimal (BCD) code obtained by adding 3 (`0011`) to each BCD digit. It is a self-complementing code, making it particularly useful in digital arithmetic circuits for subtraction operations.

#### Truth Table
| Decimal | BCD Input (DCBA) | Excess-3 Output (WXYZ) |
|:-------:|:----------------:|:----------------------:|
|    0    |       0000       |          0011          |
|    1    |       0001       |          0100          |
|    2    |       0010       |          0101          |
|    3    |       0011       |          0110          |
|    4    |       0100       |          0111          |
|    5    |       0101       |          1000          |
|    6    |       0110       |          1001          |
|    7    |       0111       |          1010          |
|    8    |       1000       |          1011          |
|    9    |       1001       |          1100          |

---

### 2. Binary to Gray Code Converter
Gray code is an unweighted, cyclic binary numeral system where two successive numeric values differ by only a single bit. This structural characteristic prevents timing race conditions and transient errors, making it widely used in hardware peripherals like rotary encoders and asynchronous FIFO pointer synchronization.


---