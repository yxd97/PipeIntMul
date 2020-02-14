# PipeIntMul
Simple Pipeline Integer Multiplier

## Introduction
This multiplier takes in 2 32-bit unsigned integer and produce a 64-bit unsigned integer, having 6 stages with the architecture as shown below:  
![Arch](https://github.com/YxdFlare/PipeIntMul/blob/modelsim/2.png)  
Each small multiplier in stage C0 to C3 is an 8bit-32bit iterative multiplier, which takes 12 cycles to complete an operation.

## Simulation Instructions  
There are 2 testbench files:  _test_PiptIntMul_varlat.v_ and _test_PiptIntMul_time.v_.  
_test_PiptIntMul_varlat.v_ is used for RTL simulation, in which all signals will change perfectly at the clock egde.  
_test_PiptIntMul_time.v_ is used for post-PAR simulation with delay, in which all signals might not change perfectly at the clock egde.  
There are 2 parameters you need to take care of in _test_PiptIntMul_time.v_: _min_pulsewidth_ and _max_dt_.  
  You need to set _min_pulsewidth_ to be larger than the biggest possible glitch's pulse width. This is to avoid sampling at the glitches caused by static hazard.  
  You need to set _max_dt_ to be larger than the biggest possible delay from the clock to the _commit_ signal, or from the _commit_ signal to the actual data output, __plus__ the _min_pulsewidth_.  
You can adjust these parameters if you are sure that the output waveform is correct but the testbench is reporting "Failing". However, you should not increase _max_dt_ to be larger than your clock cycle time (you should not have to do so unless the design does not meet timing).  
![simtime](https://github.com/YxdFlare/PipeIntMul/blob/modelsim/3.png)  
If you are using Xilinx ISE, please remove or comment all _"\`include"_. The file dependencies are shown below.  

### File Denpencies
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

