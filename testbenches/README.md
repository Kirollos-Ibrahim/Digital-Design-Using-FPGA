# Testbenches

This directory contains the Verilog HDL testbenches used to verify the functionality of the digital design modules in this repository. The testbenches are organized to match the corresponding **Combinational** and **Sequential** source code directories, providing a structured and scalable verification environment.

Each testbench is designed to validate the expected behavior of its associated module through simulation before synthesis.

---

## Directory Structure

```
testbenches/
    Combinational/
    Sequential/
```

---

## Verification Scope

The testbenches are developed to verify:

* Functional correctness
* Input and output behavior
* Normal operating conditions
* Boundary and corner cases where applicable
* Clock and reset functionality for sequential designs

---

## Simulation

All testbenches are intended to be simulated using **ModelSim**. Simulation waveforms are used to confirm that each design behaves according to its specifications before being synthesized in **Xilinx Vivado**.

---

## Related Directories

| Directory      | Description                                       |
| -------------- | ------------------------------------------------- |
| `src/`         | Verilog HDL source files for all digital designs  |
| `simulations/` | ModelSim simulation projects and waveform results |
| `vivado/`      | Vivado synthesis and implementation projects      |
