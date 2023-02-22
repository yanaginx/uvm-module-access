## Example testbench demonstrating the method to access top's module through test's components

### Run string
More details about the run string of different simulators can be found [here](https://www.doulos.com/knowhow/systemverilog/uvm/easier-uvm/easier-uvm-code-generator/easier-uvm-code-generator-tutorial-1/) at the "Run the simulation" section

For quick running the simulation using `vsim` when standing at the root directory of the repo:
```
cd generated_tb/sim && vsim -c -do "do compile_questa.do; run -all"
```