package backdoor_access_pkg;
  import uvm_pkg::*;

  virtual class input_model_backdoor extends uvm_pkg::uvm_object;
    function new(string name="input_model_backdoor");
      super.new(name);
    endfunction

    pure virtual function void insert(logic [7:0] value);

  endclass : input_model_backdoor
endpackage : backdoor_access_pkg
