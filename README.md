# Digital Design Using FPGA

A collection of digital design projects implemented in **Verilog HDL**, covering fundamental combinational and sequential circuits used in FPGA and ASIC design.

---

## Repository Objectives

* Practice RTL design using Verilog HDL.
* Implement digital circuits using different modeling styles.
* Verify functionality through simulation and testbenches.
* Build a reusable library of digital design modules. 

---

## Design Methodology

Each design follows the standard digital design flow:

1. Design the circuit specification.
2. Implement the RTL in Verilog.
3. Develop a comprehensive testbench.
4. Simulate and verify functionality using ModelSim.
5. Synthesize the design using Xilinx Vivado (for applicable projects).
6. Review RTL schematics and synthesis results.

---

## Coding Styles

Whenever applicable, the same circuit is implemented using multiple Verilog modeling styles:

* Gate-Level Modeling
* Dataflow Modeling
* Behavioral Modeling

This enables comparison between different implementation approaches while producing equivalent hardware functionality.

---

## Repository Structure

```
src/
    Combinational/
    Sequential/

testbenches/
    Combinational/
    Sequential/

simulations and synthesis/
    ModelSim/
    Vivado/

HDLBits/
```

---

## Current Projects

### Combinational Logic

* 2×1 Multiplexer
* 4×1 Multiplexer
* 2-to-4 Decoder
* Binary to Gray Converter

Additional combinational circuits will be added over time.

### Sequential Logic (Planned)

* SR Flip-Flop
* JK Flip-Flop
* D Flip-Flop
* T Flip-Flop
* Registers
* Shift Registers
* Counters
* Finite State Machines (FSM)

---

## Development Tools

| Tool          | Purpose                              |
| ------------- | ------------------------------------ |
| Verilog HDL   | RTL Design                           |
| ModelSim      | Simulation & Functional Verification |
| Xilinx Vivado | Synthesis and RTL Analysis           |
| Git & GitHub  | Version Control                      |

---

## Verification

Most projects include dedicated Verilog testbenches used to verify the correctness of the implemented circuits through simulation.

Simulation waveforms are included whenever applicable.

---

## Future Work

The repository will continue to expand with more advanced topics, including:

* Arithmetic Logic Unit (ALU)
* Carry Look-Ahead Adder
* Barrel Shifter
* Priority Encoder
* Booth Multiplier
* UART
* SPI
* I²C
* FIFO
* Memory Modules
* Pipelined Designs
* Finite State Machines
* FPGA Board Implementations

---

## License

This project is released under the MIT License.
