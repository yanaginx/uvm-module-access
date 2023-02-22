// You can insert code here by setting file_header_inc in file common.tpl

//=============================================================================
// Project  : generated_tb
//
// File Name: arith_seq_item.sv
//
//
// Version:   1.0
//
// Code created by Easier UVM Code Generator version 2017-01-19 on Thu Nov 10 00:04:59 2022
//=============================================================================
// Description: Sequence item for arith_sequencer
//=============================================================================

`ifndef ARITH_SEQ_ITEM_SV
`define ARITH_SEQ_ITEM_SV

// You can insert code here by setting trans_inc_before_class in file arith.tpl

class trans extends uvm_sequence_item; 

  `uvm_object_utils(trans)

  // To include variables in copy, compare, print, record, pack, unpack, and compare2string, define them using trans_var in file arith.tpl
  // To exclude variables from compare, pack, and unpack methods, define them using trans_meta in file arith.tpl

  // Transaction variables
  rand logic [7:0] input1;
  rand logic [7:0] input2;
  rand logic [8:0] sum;


  extern function new(string name = "");

  // You can remove do_copy/compare/print/record and convert2string method by setting trans_generate_methods_inside_class = no in file arith.tpl
  extern function void do_copy(uvm_object rhs);
  extern function bit  do_compare(uvm_object rhs, uvm_comparer comparer);
  extern function void do_print(uvm_printer printer);
  extern function void do_record(uvm_recorder recorder);
  extern function void do_pack(uvm_packer packer);
  extern function void do_unpack(uvm_packer packer);
  extern function string convert2string();

  // You can insert code here by setting trans_inc_inside_class in file arith.tpl

endclass : trans 


function trans::new(string name = "");
  super.new(name);
endfunction : new


// You can remove do_copy/compare/print/record and convert2string method by setting trans_generate_methods_after_class = no in file arith.tpl

function void trans::do_copy(uvm_object rhs);
  trans rhs_;
  if (!$cast(rhs_, rhs))
    `uvm_fatal(get_type_name(), "Cast of rhs object failed")
  super.do_copy(rhs);
  input1 = rhs_.input1;
  input2 = rhs_.input2;
  sum    = rhs_.sum;   
endfunction : do_copy


function bit trans::do_compare(uvm_object rhs, uvm_comparer comparer);
  bit result;
  trans rhs_;
  if (!$cast(rhs_, rhs))
    `uvm_fatal(get_type_name(), "Cast of rhs object failed")
  result = super.do_compare(rhs, comparer);
  result &= comparer.compare_field("input1", input1, rhs_.input1, $bits(input1));
  result &= comparer.compare_field("input2", input2, rhs_.input2, $bits(input2));
  result &= comparer.compare_field("sum", sum,       rhs_.sum,    $bits(sum));
  return result;
endfunction : do_compare


function void trans::do_print(uvm_printer printer);
  if (printer.knobs.sprint == 0)
    `uvm_info(get_type_name(), convert2string(), UVM_MEDIUM)
  else
    printer.m_string = convert2string();
endfunction : do_print


function void trans::do_record(uvm_recorder recorder);
  super.do_record(recorder);
  // Use the record macros to record the item fields:
  `uvm_record_field("input1", input1)
  `uvm_record_field("input2", input2)
  `uvm_record_field("sum",    sum)   
endfunction : do_record


function void trans::do_pack(uvm_packer packer);
  super.do_pack(packer);
  `uvm_pack_int(input1) 
  `uvm_pack_int(input2) 
  `uvm_pack_int(sum)    
endfunction : do_pack


function void trans::do_unpack(uvm_packer packer);
  super.do_unpack(packer);
  `uvm_unpack_int(input1) 
  `uvm_unpack_int(input2) 
  `uvm_unpack_int(sum)    
endfunction : do_unpack


function string trans::convert2string();
  string s;
  $sformat(s, "%s\n", super.convert2string());
  $sformat(s, {"%s\n",
    "input1 = 'h%0h  'd%0d\n", 
    "input2 = 'h%0h  'd%0d\n", 
    "sum    = 'h%0h  'd%0d\n"},
    get_full_name(), input1, input1, input2, input2, sum, sum);
  return s;
endfunction : convert2string


// You can insert code here by setting trans_inc_after_class in file arith.tpl

`endif // ARITH_SEQ_ITEM_SV

