# Understanding Digital Electronics by fabricating an ALU.

# Verilog ALU

A simple Arithmetic Logic Unit (ALU) implemented in Verilog and tested using an Octave simulation model.

This project demonstrates the design and verification of a small ALU capable of performing basic arithmetic and logical operations.

---

## Team

- Yashvardhan Srivastava
- Aakarsh Verma
- Joel Chahar

---

## Project Overview

The goal of this project is to design a small 3-bit ALU using Verilog and simulate its behavior using tools like Octave (or MATLAB) and Multisim before implementing the hardware logic using 74xx series ICs.

The ALU accepts two binary inputs and an opcode that determines which operation is performed.

---

## ALU Architecture

Inputs:

A → operand A  
B → operand B  
OpIn → operation selector

Outputs:

OUT → operation result

The ALU uses a multiplexer-style structure where multiple operation blocks compute results in parallel and the opcode selects the desired output.

---

## Supported Operations

| Opcode | Operation |
|--------|-----------|
|000     |        ADD|
|001     |        SUB|
|010     |        AND|
|011     |         OR|
|100     |        NOT|
|101     |       NAND|
|110     |        NOR|
|111     |     PASS A|

---

## Project Structure
ALU
├── docs
├── sim
│ └── ALU_sim.m
├── verilog
│ └── alu.v
└── README.md

--- 

## Reference Model

The Octave simulation acts as a behavioral reference model for verifying the Verilog implementation before hardware synthesis.

---

## Simulation

The ALU behavior is tested using an Octave simulation script that generates random inputs and verifies the output of each operation.

Example simulation output:

Operation Name: SUB
A: 0 0 1
B: 1 0 0
OpIn: 0 0 1
OUT: 1 0 1

---

## Hardware Implementation Plan

The Verilog ALU will be translated into a hardware circuit using 74xx series logic ICs.

Possible components include:

- 74LS283 → binary adder
- 74LS08 → AND gates
- 74LS32 → OR gates
- 74LS86 → XOR gates
- 74LS151 → multiplexer for operation selection

---

## Future Work

- Implement hardware ALU using discrete ICs
- Add carry and zero flags
- Create a full Verilog testbench
- Expand ALU bit-width (i.e. make a 4-bit ALU)
