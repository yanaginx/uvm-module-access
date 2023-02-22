// You can insert code here by setting file_header_inc in file common.tpl

//=============================================================================
// Project  : generated_tb
//
// File Name: top_test.sv
//
//
// Version:   1.0
//
// Code created by Easier UVM Code Generator version 2017-01-19 on Thu Nov 10 00:04:59 2022
//=============================================================================
// Description: Test class for top (included in package top_test_pkg)
//=============================================================================

`ifndef TOP_TEST_SV
`define TOP_TEST_SV

// You can insert code here by setting test_inc_before_class in file common.tpl

class top_test extends uvm_test;

  `uvm_component_utils(top_test)

  // Change made here
  top_env m_env;
  logic [7:0] rand_input = 0;
  // end : Change made here

  backdoor_access_pkg::input_model_backdoor backdoor_im_i;
  uvm_object backdoor_object_i;

  extern function new(string name, uvm_component parent);

  // You can remove build_phase method by setting test_generate_methods_inside_class = no in file common.tpl

  extern function void build_phase(uvm_phase phase);

  // You can insert code here by setting test_inc_inside_class in file common.tpl
  extern task run_phase(uvm_phase phase);

endclass : top_test

function top_test::new(string name, uvm_component parent);
  super.new(name, parent);
endfunction : new

// You can remove build_phase method by setting test_generate_methods_after_class = no in file common.tpl

function void top_test::build_phase(uvm_phase phase);

  // You can insert code here by setting test_prepend_to_build_phase in file common.tpl

  // You could modify any test-specific configuration object variables here

  m_env = top_env::type_id::create("m_env", this);

  // You can insert code here by setting test_append_to_build_phase in file common.tpl

  // Fetching the handle from the uvm_config_db and cast it to the correct type
  if(!uvm_config_db#(uvm_object)::get(uvm_root::get(), "", "IM_BACKDOOR_ACCESS", backdoor_object_i))   
  begin
    `uvm_fatal("TEST","Failed to get input model backdoor access object")
  end
  assert($cast(backdoor_im_i, backdoor_object_i)) else begin
    `uvm_fatal("ASSERT", "Dynamic casting backdoor_im_instance failed!")
  end

endfunction : build_phase
// You can insert code here by setting test_inc_after_class in file common.tpl
task top_test::run_phase(uvm_phase phase);
  $display("Went in the run_phase of the test!");
  for (int i = 0; i < 256; ++i) begin
    assert (randomize(rand_input));
    backdoor_im_i.insert(rand_input);
  end
  #1000;
endtask


`endif // TOP_TEST_SV

