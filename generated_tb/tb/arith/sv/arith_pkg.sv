// You can insert code here by setting file_header_inc in file common.tpl

//=============================================================================
// Project  : generated_tb
//
// File Name: arith_pkg.sv
//
//
// Version:   1.0
//
// Code created by Easier UVM Code Generator version 2017-01-19 on Thu Nov 10 00:04:59 2022
//=============================================================================
// Description: Package for agent arith
//=============================================================================

package arith_pkg;

  `include "uvm_macros.svh"

  import uvm_pkg::*;
  import backdoor_access_pkg::*;

  `include "arith_trans.sv"
  `include "arith_config.sv"
  `include "arith_driver.sv"
  `include "arith_monitor.sv"
  `include "arith_sequencer.sv"
  `include "arith_coverage.sv"
  `include "arith_agent.sv"
  `include "arith_seq_lib.sv"
  // Including the backdoor pkg

endpackage : arith_pkg
