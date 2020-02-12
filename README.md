# PipeIntMul
Simple Pipeline Integer Multipiler

## Introduction
This multipiler takes in 2 32-bit unsigned integer and produce a 64-bit unsigned integer, having 6 stages with the architecture as shown below:  
![Arch](https://github.com/YxdFlare/PipeIntMul/blob/modelsim/2.png)  
Each small multipiler in stage C0 to C3 is an 8bit-32bit iterative multipiler, which takes 12 cycles to complete an operation.

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
  * PipeIntMul.v _> top-level for the 32bit-32bit pipeline multipiler_
  * PipeIntMul_ctrl.v _> control unit for the pipeline multipiler_
  * PipeIntMul_datapath.v _> datapath for the pipeline multipiler_
  * IterIntMul.v _> top-level for the 8bit-32bit iterative multipiler_
  * IterIntMul_ctrl.v _> control unit for the iterative multipiler_
  * IterIntMul_datapath.v _> datapath for the iterative multipiler_
  * PipelineReg.v _> ipeline registers_

## Design Hierarchy  
Each item here is coded as: __Instance__ (Module from file)  

* __PipeIntMul__ (PipeIntMul.v)
  * __control__ (PipeIntMul_ctrl from PipeIntMul_ctrl.v)
  * __datapath__ (PipeIntMul_datapath from PipeIntMul_datapath.v)
    * __C0_MUL__ (IterIntMul from IterIntMul.v)
      * __IMULDP__ (IterIntMul_datapath from IterIntMul_datapath.v)
      * __IMULCT__ (IterIntMul_ctrl from IterIntMul_ctrl.v)
    * __C1_MUL__ (IterIntMul from IterIntMul.v)
      * __IMULDP__ (IterIntMul_datapath from IterIntMul_datapath.v)
      * __IMULCT__ (IterIntMul_ctrl from IterIntMul_ctrl.v)
    * __C2_MUL__ (IterIntMul from IterIntMul.v)
      * __IMULDP__ (IterIntMul_datapath from IterIntMul_datapath.v)
      * __IMULCT__ (IterIntMul_ctrl from IterIntMul_ctrl.v)
    * __C3_MUL__ (IterIntMul from IterIntMul.v)
      * __IMULDP__ (IterIntMul_datapath from IterIntMul_datapath.v)
      * __IMULCT__ (IterIntMul_ctrl from IterIntMul_ctrl.v)
    * __A3_MF_REG__ (PipelineReg8 from PipelineReg.v)
    * __A2_MF_REG__ (PipelineReg8 from PipelineReg.v)
    * __A1_MF_REG__ (PipelineReg8 from PipelineReg.v)
    * __A0_MF_REG__ (PipelineReg8 from PipelineReg.v)
    * __B_MF_REG__ (PipelineReg32 from PipelineReg.v)
    * __A3_C0_REG__ (PipelineReg8 from PipelineReg.v)
    * __A2_C0_REG__ (PipelineReg8 from PipelineReg.v)
    * __A1_C0_REG__ (PipelineReg8 from PipelineReg.v)
    * __P0_C0_REG__ (PipelineReg40 from PipelineReg.v)
    * __B_C0_REG__ (PipelineReg32 from PipelineReg.v)
    * __A3_C1_REG__ (PipelineReg8 from PipelineReg.v)
    * __A2_C1_REG__ (PipelineReg8 from PipelineReg.v)
    * __P1_C1_REG__ (PipelineReg40 from PipelineReg.v)
    * __P0_C1_REG__ (PipelineReg40 from PipelineReg.v)
    * __B_C1_REG__ (PipelineReg32 from PipelineReg.v)
    * __A3_C2_REG__ (PipelineReg8 from PipelineReg.v)
    * __P2_C2_REG__ (PipelineReg40 from PipelineReg.v)
    * __P1_C2_REG__ (PipelineReg40 from PipelineReg.v)
    * __P0_C2_REG__ (PipelineReg40 from PipelineReg.v)
    * __B_C2_REG__ (PipelineReg32 from PipelineReg.v)
    * __P3_C3_REG__ (PipelineReg40 from PipelineReg.v)
    * __P2_C3_REG__ (PipelineReg40 from PipelineReg.v)
    * __P1_C3_REG__ (PipelineReg40 from PipelineReg.v)
    * __P0_C3_REG__ (PipelineReg40 from PipelineReg.v)
    * __B_C3_REG__ (PipelineReg32 from PipelineReg.v)
  * __PipeIntMul.ucf__
