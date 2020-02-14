# PipeIntMul
Simple Pipeline Integer Multiplier

## Introduction
This multiplier takes in 2 32-bit unsigned integer and produce a 64-bit unsigned integer, having 6 stages with the architecture as shown below:  
![Arch](https://github.com/YxdFlare/PipeIntMul/blob/modelsim/2.png)  
Each small multiplier in stage C0 to C3 is an 8bit-32bit iterative multiplier, which takes 12 cycles to complete an operation.

## Simulation Instructions  
The current working testbench file is _test_PiptIntMul_varlat.v_.  
If you are using Xilinx ISE, please remove or comment all _"\`include"_. The file dependencies are shown below.  
The post-PAR simulation is currently not working.

- test_PipeIntMul_varlat.v
  - request_PipeIntMul.dat
  * response_PieIntMul.dat
  * PipeIntMul.v
    * PipeIntMul_datapath.v
      * PipelineReg.v
      * IterIntMul.v
        * IterIntMul_datapath.v
        * IterIntMul_ctrl.v
    * PipeIntMul_ctrl.v

## File Descriptions  
Directories are shown as bolded. Not all files are listed.  

* __build__ _> contains all building outputs, reports and summaries (synthesis, timing, power, etc...)_
* __sim__ _> simulation results_
* __source__ _> source codes_
  * __postPAR__ _> post-place-and-route simulation model and standard delay file (.sdf). Xilinx libraries required_
    * pipeintmul_timesim.sdf
    * PipeIneMul_timesim.v
  * __test__ _> testbench and test data_
    * bitvars.py _> dependency to test_PipeIntMul.py_
    * caseparser.py _> dependency to test_PipeIntMul.py_
    * test_PipeIntMul.py _> script to generate simulation data_
    * test_PipeIntMul_time.v _> testbench for post-PAR simulation (not working)_
    * test_PipeIntMul_varlat.v _> testbench for pre-synthesis simulation_
    * request_PipeIntMul.dat _> simulation data for inputs_
    * response_PipeIntMul.dat _> simulation data for expected results_
  * PipeIntMul.v _> top-level for the 32bit-32bit pipeline multiplier_
  * PipeIntMul_ctrl.v _> control unit for the pipeline multiplier_
  * PipeIntMul_datapath.v _> datapath for the pipeline multipiler_
  * IterIntMul.v _> top-level for the 8bit-32bit iterative multiplier_
  * IterIntMul_ctrl.v _> control unit for the iterative multiplier_
  * IterIntMul_datapath.v _> datapath for the iterative multiplier_
  * PipelineReg.v _> pipeline registers_

