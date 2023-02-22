// You can insert code here by setting file_header_inc in file common.tpl

//=============================================================================
// Project  : generated_tb
//
// File Name: arith_if.sv
//
//
// Version:   1.0
//
// Code created by Easier UVM Code Generator version 2017-01-19 on Thu Nov 10 00:04:59 2022
//=============================================================================
// Description: Signal interface for agent arith
//=============================================================================

`ifndef ARITH_IF_SV
`define ARITH_IF_SV

interface arith_if(); 

  timeunit      1ns;
  timeprecision 1ps;

  import arith_pkg::*;

  logic [7:0] A;
  logic [7:0] B;
  logic [8:0] F;

  // You can insert properties and assertions here
  modport MASTER (
    output A,
    output B
  );

  // You can insert code here by setting if_inc_inside_interface in file arith.tpl

endinterface : arith_if

`endif // ARITH_IF_SV

