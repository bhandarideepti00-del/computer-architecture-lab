# Lab 02:VHDL Code for Realizing Logic Gates
Objective
• To write VHDL code for basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and
XNOR.
• To simulate each gate and verify its truth table using GTKWave.

Theory
Logic gates are the fundamental building blocks of all digital circuits. Each gate performs a
basic Boolean operation on one or more binary inputs to produce a single binary output.

Gate VHDL Operator Boolean Expression
AND and Y = A · B
OR or Y = A + B
NOT not Y = A
NAND nand Y = A · B
NOR nor Y = A + B
XOR xor Y = A ⊕ B
XNOR xnor Y = A ⊕ B

## Design Description

In this lab:

- Each logic gate was implemented using a separate VHDL design file.
- A single testbench (`gates_tb.vhd`) was used to test all gates simultaneously.
- Inputs (A, B) were applied in sequence using time delays.
- The outputs of all gates were observed together using waveform analysis.

---

## Output

The waveform below shows the behavior of all logic gates for different input combinations.

output.png

---

## Discussion and Conclusion

All logic gates were successfully implemented and simulated using VHDL.

From the waveform:
- AND gate produces HIGH output only when both inputs are HIGH.
- OR gate produces HIGH output when any input is HIGH.
- NOT gate correctly inverts the input.
- NAND, NOR, XOR, and XNOR gates behave according to their expected logical operations.

The simulation results match the theoretical truth tables, confirming the correctness of the designs.

This lab helped in understanding:
- Implementation of multiple digital circuits in VHDL
- Use of a common testbench for multiple modules
- Waveform analysis using GTKWave

Thus, all objectives of the lab were successfully achieved.