# Digital Logic Design: Multiplexer and Demultiplexer (VHDL Simulation)

## Objective
- To design and simulate a **4-to-1 Multiplexer (MUX)**  
- To design and simulate a **1-to-4 Demultiplexer (DEMUX)**  

---

## Theory

### Multiplexer (MUX)
A **Multiplexer (MUX)** is a combinational circuit that selects one of \(2^n\) input lines and forwards it to a single output based on select lines.

A **4-to-1 MUX**:
- Inputs: D0, D1, D2, D3  
- Select lines: S1, S0  
- Output: Y  
.
| S1 | S0 | Output (Y) |
|----|----|-----------|
| 0  | 0  | D0        |
| 0  | 1  | D1        |
| 1  | 0  | D2        |
| 1  | 1  | D3        |

The selected input is directly passed to the output depending on the select lines.

---

###  Demultiplexer (DEMUX)
A **Demultiplexer (DEMUX)** is a combinational circuit that takes a single input and routes it to one of \(2^n\) output lines based on select lines.

A **1-to-4 DEMUX**:
- Input: D  
- Select lines: S1, S0  
- Outputs: Y0, Y1, Y2, Y3  

| S1 | S0 | Active Output |
|----|----|--------------|
| 0  | 0  | Y0 = D       |
| 0  | 1  | Y1 = D       |
| 1  | 0  | Y2 = D       |
| 1  | 1  | Y3 = D       |

Only one output line carries the input value at a time.

---

##  Discussion

This experiment focuses on the design and behavior of **data routing circuits**.

- The **multiplexer** acts as a data selector, allowing one of several inputs to be transmitted through a single output line.
- It is widely used in systems where multiple data sources need to share a single communication channel.
- The **demultiplexer** performs the reverse operation, distributing a single input signal to one of several outputs.
- Both circuits rely on **select lines** to control the routing of signals.
- These circuits are purely **combinational**, meaning their outputs depend only on current inputs.
- MUX and DEMUX are commonly used in:
  - Data communication systems  
  - Signal routing  
  - Control units in digital systems  

Simulation ensures that:
- Correct input selection in MUX  
- Correct output activation in DEMUX  

---

## Output

### Multiplexer Results
- Output always matches the selected input line  
- Changing select lines immediately updates the output  
- Only one input is forwarded at any time  

###  Demultiplexer Results
- Input signal appears only on the selected output line  
- All other outputs remain LOW  
- Output selection changes correctly with select lines  

### Simulation Observations
- Outputs respond instantly to input and select line changes  
- No incorrect routing observed  
- Results match expected truth tables  

---

## Conclusion
- Successfully designed and verified **4-to-1 Multiplexer** and **1-to-4 Demultiplexer**  
- MUX correctly selects and forwards one input signal  
- DEMUX correctly routes input to the corresponding output line  
- These components are fundamental in:
  - Digital communication systems  
  - Data routing and switching  
  - Multiprocessing and control systems  

The experiment enhances understanding of **signal selection and distribution using combinational logic circuits**.