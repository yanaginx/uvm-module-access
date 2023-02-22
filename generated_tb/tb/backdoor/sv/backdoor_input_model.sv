`include "uvm_macros.svh"
import uvm_pkg::*;
import backdoor_access_pkg::*;

class backdoor_im extends input_model_backdoor;
  
  function new(string name="backdoor_im");
    super.new(name);
  endfunction : new 

  function void insert(logic[7:0] value);
    top_tb.th.model.insert_input(value);
  endfunction : insert
            
endclass : backdoor_im

initial begin
  backdoor_im backdoor_im_i;
  backdoor_im_i = new();
  uvm_config_db #(uvm_object)::set(uvm_root::get(), "*", "IM_BACKDOOR_ACCESS", backdoor_im_i);  
end
