# Combinational Testbenches

This directory contains the Verilog HDL testbenches used to verify the combinational logic designs in this repository. Each testbench is developed to validate the functional behavior of its corresponding module through simulation.

The verification process ensures that the implemented logic produces the expected outputs for different input combinations before synthesis.

---

## Verification Scope

The testbenches are designed to verify:

* Functional correctness
* Input and output behavior
* Multiple test vectors
* Boundary and corner cases where applicable

---

## Simulation

The testbenches are intended to be simulated using **ModelSim**, allowing waveform analysis and functional verification prior to synthesis in **Xilinx Vivado**.

---

## Notes

Each testbench is organized to correspond with its associated design in the `src/Combinational` directory, providing a consistent and maintainable verification structure.
