agent_name  = arith
trans_item  = trans

trans_var   = rand logic [7:0] input1;
trans_var   = rand logic [7:0] input2;
trans_var   = rand logic [8:0] sum;

if_port     = logic [7:0] A;
if_port     = logic [7:0] B;
if_port     = logic [7:0] F;

driver_inc  = arith_driver_inc.sv  inline
monitor_inc = arith_monitor_inc.sv inline

