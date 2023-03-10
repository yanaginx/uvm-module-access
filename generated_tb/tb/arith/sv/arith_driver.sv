// You can insert code here by setting file_header_inc in file common.tpl

//=============================================================================
// Project  : generated_tb
//
// File Name: arith_driver.sv
//
//
// Version:   1.0
//
// Code created by Easier UVM Code Generator version 2017-01-19 on Thu Nov 10 00:04:59 2022
//=============================================================================
// Description: Driver for arith
//=============================================================================

`ifndef ARITH_DRIVER_SV
`define ARITH_DRIVER_SV

// You can insert code here by setting driver_inc_before_class in file arith.tpl

class arith_driver extends uvm_driver #(trans);

  `uvm_component_utils(arith_driver)

  virtual arith_if vif;

  arith_config     m_config;

  extern function new(string name, uvm_component parent);

  // Methods run_phase and do_drive generated by setting driver_inc in file arith.tpl
  extern task run_phase(uvm_phase phase);
  extern task do_drive();

  // You can insert code here by setting driver_inc_inside_class in file arith.tpl

endclass : arith_driver 


function arith_driver::new(string name, uvm_component parent);
  super.new(name, parent);
endfunction : new


task arith_driver::run_phase(uvm_phase phase);
  `uvm_info(get_type_name(), "run_phase", UVM_HIGH)

  forever
  begin
    seq_item_port.get_next_item(req);
      `uvm_info(get_type_name(), {"req item\n",req.sprint}, UVM_HIGH)
    do_drive();
    seq_item_port.item_done();
    # 10ns;
  end
endtask : run_phase


// Start of inlined include file generated_tb/tb/include/arith_driver_inc.sv
task arith_driver::do_drive();
  /*
  vif.A <= req.input1;
  vif.B <= req.input2;
  #10;
  */
endtask
// End of inlined include file

// You can insert code here by setting driver_inc_after_class in file arith.tpl

`endif // ARITH_DRIVER_SV

