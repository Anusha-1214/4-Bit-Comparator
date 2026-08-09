# 4-Bit Comparator in Verilog

A simple 4-bit magnitude comparator designed using Verilog HDL.

## Features

- Compares two 4-bit binary numbers
- Determines whether A is greater than B
- Determines whether A is equal to B
- Determines whether A is less than B
- Includes a Verilog testbench
- Generates a VCD waveform for simulation

## Inputs

| Signal | Width | Description |
|--------|-------|-------------|
| A | 4-bit | First binary input |
| B | 4-bit | Second binary input |

## Outputs

| Signal | Width | Description |
|--------|-------|-------------|
| A_greater_B | 1-bit | HIGH when A > B |
| A_equal_B | 1-bit | HIGH when A = B |
| A_less_B | 1-bit | HIGH when A < B |

## Block Diagram

```text
              ┌─────────────────────┐
 A[3:0] ─────►│                     │───► A > B
              │    4-BIT           │
 B[3:0] ─────►│    COMPARATOR      │───► A = B
              │                     │
              └─────────────────────┘
                                      └──► A < B
                                      