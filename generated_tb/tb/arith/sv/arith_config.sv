// You can insert code here by setting file_header_inc in file common.tpl

//=============================================================================
// Project  : generated_tb
//
// File Name: arith_config.sv
//
//
// Version:   1.0
//
// Code created by Easier UVM Code Generator version 2017-01-19 on Thu Nov 10 00:04:59 2022
//=============================================================================
// Description: Configuration for agent arith
//=============================================================================

`ifndef ARITH_CONFIG_SV
`define ARITH_CONFIG_SV

// You can insert code here by setting agent_config_inc_before_class in file arith.tpl

class arith_config extends uvm_object;

  // Do not register config class with the factory

  virtual arith_if         vif;
                  
  uvm_active_passive_enum  is_active = UVM_ACTIVE;
  bit                      coverage_enable;       
  bit                      checks_enable;         

  // You can insert variables here by setting config_var in file arith.tpl

  // You can remove new by setting agent_config_generate_methods_inside_class = no in file arith.tpl

  extern function new(string name = "");

  // You can insert code here by setting agent_config_inc_inside_class in file arith.tpl

endclass : arith_config 


// You can remove new by setting agent_config_generate_methods_after_class = no in file arith.tpl

function arith_config::new(string name = "");
  super.new(name);
endfunction : new


// You can insert code here by setting agent_config_inc_after_class in file arith.tpl

`endif // ARITH_CONFIG_SV

