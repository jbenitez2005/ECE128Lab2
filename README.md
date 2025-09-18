# ECE 128 – Full Adder Project

##  Project Description
This project implements a **1-bit Full Adder** and a **4-bit Ripple Carry Adder** in Verilog.  
Three coding styles were used: **behavioral, dataflow, and structural**.  
Simulation was done in Vivado, and the design was tested on the **Basys3 FPGA board**.



## ▶️ Simulation Instructions
1. Open Vivado.
2. Create a new project and add the Verilog files and the testbench.
3. Update constraints file to use appropriate LEDS, switches...
4. Set the testbench as the **Simulation Top**.
5. Run **Behavioral Simulation**.
6. View waveforms for verification.

## FPGA Implementation Instructions
1. In Vivado, set your chosen design (`full_adder_behavioral.v`, etc.) as the **Top Module**.
2. Add the `constraints/basys3.xdc` file for pin mapping:
   - Switches = inputs (`A`, `B`, `Cin`)
   - LEDs = outputs (`Sum`, `Cout`)
3. Run **Synthesis → Implementation → Generate Bitstream**.
4. Open Hardware Manager → Connect to Basys3 → Program Device.
5. Verify outputs by toggling switches and observing LEDs.

## Area Analysis
After running synthesis/implementation, use:
- **Reports → Utilization Report**
- **Reports → Timing Summary**

Record LUT, FF, and delay values for each model, and compare.

---

