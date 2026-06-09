# Digital Logic Design: 2-Bit Magnitude Comparator (VHDL Simulation)

## Objective
- To design and simulate a **2-bit magnitude comparator**  
- To understand how comparison operations are implemented in hardware  

---

## Theory

A **magnitude comparator** is a combinational circuit used to compare two binary numbers. It generates three output signals based on the comparison:

- **EQ (Equal):** HIGH when A = B  
- **GT (Greater Than):** HIGH when A > B  
- **LT (Less Than):** HIGH when A < B  

For a **2-bit comparator**:
- Input A = A1 A0  
- Input B = B1 B0  

### Logical Expressions

- **EQ (Equal):**  
  HIGH when both bits of A and B are equal  

- **GT (Greater Than):**  
  HIGH when A is greater than B  

- **LT (Less Than):**  
  HIGH when A is less than B  

These conditions are evaluated by comparing the most significant bits first (A1 and B1), followed by the least significant bits (A0 and B0) when necessary.

---

##  Discussion

This experiment demonstrates how **binary comparison** is implemented using combinational logic.

- The **comparator** checks equality and magnitude between two binary inputs.
- Comparison starts from the **most significant bit (MSB)** since it has higher weight.
- If the MSBs are equal, the comparison proceeds to the **least significant bit (LSB)**.
- The outputs (EQ, GT, LT) are **mutually exclusive**, meaning only one output is HIGH for any input combination.
- Such circuits are widely used in:
  - Arithmetic logic units (ALUs)
  - Sorting operations
  - Decision-making circuits in processors

Simulation helps verify that logical conditions are correctly implemented and that outputs react instantly to input changes.

---

## Output

### Comparator Results
- Produces correct comparison outputs for all input combinations  
- Only one output (EQ, GT, or LT) is HIGH at any time  
- Correctly identifies:
  - Equality when both inputs match  
  - Greater-than condition when A > B  
  - Less-than condition when A < B  

### Simulation Observations
- Output signals respond immediately to input changes  
- No ambiguity or overlap between output states  
- All cases behave according to theoretical expectations  

---

## Conclusion
- The **2-bit magnitude comparator** was successfully designed and validated  
- It accurately compares two binary numbers and produces correct outputs  
- Demonstrates efficient hardware-based comparison using combinational logic  
- This design is fundamental in:
  - Digital systems  
  - Microprocessors  
  - Data comparison and control applications  

The experiment reinforces the understanding of **binary comparison logic and circuit implementation**.