# Source Code

This directory contains the Verilog HDL source files for all digital design projects included in this repository. The designs are organized into **Combinational** and **Sequential** logic to provide a clear and scalable project structure.

The source code follows standard RTL design practices and is written to be modular, readable, and reusable. Whenever applicable, multiple Verilog modeling styles are used to demonstrate different implementation approaches for the same circuit.

## Directory Structure

```
src/
    Combinational/
    Sequential/
```

### Combinational

Contains designs whose outputs depend only on the current input values.

Examples include:

* Multiplexers (MUX)
* Decoders
* Encoders
* Code Converters

### Sequential

Contains designs whose outputs depend on both the current inputs and previous states through storage elements such as flip-flops.

Examples include:

* Flip-Flops
* Registers
* Shift Registers
* Counters
* Finite State Machines (FSMs)

Each design is accompanied by its corresponding verification environment in the `testbenches` directory, while simulation results and synthesis outputs are maintained in their respective folders.
