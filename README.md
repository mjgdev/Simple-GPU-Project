Simple General Purpose Processor

An 8-bit general-purpose processor designed and implemented in VHDL as part of my Computer Engineering coursework at Toronto Metropolitan University.

Overview

Designed and implemented a processor architecture using interconnected VHDL components to perform arithmetic and logical operations on 8-bit data and display results through FPGA hardware.

Components
8-bit ALU — Performs arithmetic and logical operations including addition, bit manipulation, comparison, XOR, shifting, and rotation.
Registers — Stores and transfers 8-bit data within the processor.
FSM Control Unit — Controls sequential processor states.
4-to-16 Decoder — Generates one-hot control signals based on 4-bit input values.
7-Segment Display Interface — Converts processor output into hexadecimal display values for FPGA hardware output.
Technologies

VHDL | Quartus II | FPGA | Digital Logic | RTL | Computer Architecture

Testing & Verification

Simulated and debugged the VHDL components using Quartus II functional waveforms. The completed design was implemented on an FPGA board and verified using 7-segment display output.
