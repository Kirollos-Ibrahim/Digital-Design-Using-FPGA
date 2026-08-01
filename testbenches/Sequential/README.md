# Sequential Testbenches

This directory contains the Verilog HDL testbenches used to verify the sequential logic designs in this repository. Each testbench validates the behavior of clock-driven circuits through functional simulation.

The verification process focuses on ensuring correct operation across different clock cycles, reset conditions, and state transitions before synthesis.

---

## Verification Scope

The testbenches are designed to verify:

* Functional correctness
* Clock-driven operation
* Reset behavior
* State transitions
* Timing-related scenarios where applicable

---

## Simulation

The testbenches are intended to be simulated using **ModelSim**, enabling waveform inspection and verification of sequential behavior before synthesis in **Xilinx Vivado**.

---

## Notes

Each testbench is organized to correspond with its associated design in the `src/Sequential` directory, maintaining a clear relationship between RTL implementations and their verification environments.
