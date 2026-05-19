# Lab 1: Introduction to VHDL and Buffer Design

## Objective
The objective of this lab is to understand the basic workflow of VHDL simulation using GHDL and GTKWave.  
A simple buffer circuit is designed, simulated, and verified using waveform analysis.


## Theory
VHDL is an acronym for VHSIC Hardware Description Language (VHSIC stands for Very High
Speed Integrated Circuits). It is an IEEE industry-standard hardware description language
that can be used to model a digital system at many levels of abstraction, ranging from the
algorithmic level to the gate level. Unlike conventional programming languages, VHDL allows
designers to model how signals flow through logic gates and flip-flops concurrently (at the
same time).
    
    VHDL Structure
A VHDL design is typically composed of three essential parts:
1. Library and Packages: These contain predefined data types, constants, and functions.
The most common library used is IEEE, which provides the standard std logic types.
2. Entity: Defines the external interface of the circuit. It specifies the input and output
ports (pins) through which the circuit communicates with the outside world.
3. Architecture: Defines the internal logic or behavior of the entity. It describes how the
outputs are generated based on the inputs.

Libraries and Packages
A Library is a compiled directory where VHDL design units (such as entities, architectures,
and packages) are stored. The two most important libraries are:
• Library std: This is automatically included in every VHDL design. It contains the most
basic built-in data types such as bit, integer, boolean, and character, along with their
corresponding operators (logic, arithmetic, comparison, shift, and concatenation).
• Library IEEE: The most widely used library in VHDL. It provides the std logic and
std logic vector types that are essential for real hardware design. You must explicitly
declare this library and the relevant package at the top of your file:

library IEEE ;
use IEEE . STD_LOGIC_1164 .ALL ; -- Provides std_logic types
use IEEE . NUMERIC_STD .ALL ; -- Provides arithmetic on
std_logic

Entity
The entity describes the external view of a circuit, what goes in and what comes out. Think of
it as the “black box” definition of your component. It declares the ports: the names, directions
(in, out, inout), and data types of every signal that crosses the boundary.
The general syntax of an entity is:
entity < entity_name > is
port (
< port_name > : < direction > < data_type >;
< port_name > : < direction > < data_type >
-- No semicolon on the last port
) ;
end entity < entity_name >;

Architecture
The architecture defines the internal behavior or structure of the entity. If the entity is the
black box, the architecture is what is inside it. One entity can have multiple architectures (e.g.,
one behavioral and one structural), but only one is active at a time.
The general syntax of an architecture is:
architecture < arch_name > of < entity_name > is
-- Declarations : internal signals , constants , components
begin
-- Concurrent statements describing the logic
end architecture < arch_name >;
Example: Architecture for the AND gate:
architecture Behavioral of AND_GATE is
begin
Y <= A and B ; -- Concurrent signal assignment
end architecture Behavioral ;
A key concept here is that the statement Y <= A and B; is a concurrent signal assignment.
It does not execute line by line like a program, instead it continuously monitors A and B and
updates Y whenever either changes, just like a real logic gate.
Types of Architectural Models
VHDL supports three styles of writing an architecture, each describing the same circuit at a
different level of abstraction:
1. Behavioral Model: Describes what the circuit does using sequential statements inside
a process block. It is the most abstract style and closest to conventional programming.
architecture Behavioral of AND_GATE is
begin
process (A , B )
begin
Y <= A and B ;
end process ;
end architecture Behavioral ;
2. Dataflow Model: Describes how data flows through the circuit using concurrent signal
assignments (no process block). It is between behavioral and structural in abstraction
level.


### Truth Table:

| A | Y |
|---|---|
| 0 | 0 |
| 1 | 1 |

The logical function of a buffer is:
Y=A

In this lab:
- GHDL is used to compile and simulate the VHDL code
- GTKWave is used to visualize signal waveforms



## Design Description
The buffer circuit is implemented using a simple behavioral model:

- Input: A  
- Output: Y  
- Operation: Output directly follows input  

A testbench is used to generate input signals at different time intervals.



## Output

output.png


## Discussion and Conclusion
The buffer circuit was successfully implemented and simulated using VHDL.

The waveform clearly shows that the output signal (Y) follows the input signal (A) exactly, confirming correct functionality of the buffer.

This lab helped in understanding:
- VHDL coding structure
- Simulation using GHDL
- Waveform analysis using GTKWave

Thus, the objective of the experiment was successfully achieved.