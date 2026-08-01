# Simulation & Synthesis

This directory contains the simulation and synthesis files generated throughout the digital design workflow. It includes **ModelSim** projects and simulation results for functional verification, as well as **Xilinx Vivado** projects and synthesis outputs for hardware implementation.

These resources demonstrate the complete design flow from RTL verification to synthesis and provide supporting evidence for the correctness and implementation of each project.

---

## Directory Structure

```
simulations-and-synthesis/
    ModelSim/
    Vivado/
```

---

## Contents

### ModelSim

Contains simulation projects, waveform files, and related outputs used to verify the functional behavior of the Verilog HDL designs.

### Vivado

Contains synthesis projects, RTL schematics, synthesis reports, and implementation files generated using Xilinx Vivado.

---

## Design Flow

The projects in this repository follow a standard RTL development process:

1. Implement the design in Verilog HDL.
2. Verify functionality using **ModelSim**.
3. Analyze simulation waveforms.
4. Synthesize the design using **Xilinx Vivado**.
5. Review RTL schematics and synthesis results.

---

## Notes

The files in this directory complement the source code and testbenches by documenting the verification and synthesis stages of the design process.
