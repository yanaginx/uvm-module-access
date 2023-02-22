// You can insert code here by setting file_header_inc in file common.tpl

//=============================================================================
// Project  : generated_tb
//
// File Name: arith_agent.sv
//
//
// Version:   1.0
//
// Code created by Easier UVM Code Generator version 2017-01-19 on Thu Nov 10 00:04:59 2022
//=============================================================================
// Description: Agent for arith
//=============================================================================

`ifndef ARITH_AGENT_SV
`define ARITH_AGENT_SV

// You can insert code here by setting agent_inc_before_class in file arith.tpl

class arith_agent extends uvm_agent;

  `uvm_component_utils(arith_agent)

  uvm_analysis_port #(trans) analysis_port;

  arith_config       m_config;
  arith_sequencer_t  m_sequencer;
  arith_driver       m_driver;
  arith_monitor      m_monitor;

  local int m_is_active = -1;

  extern function new(string name, uvm_component parent);

  // You can remove build/connect_phase and get_is_active by setting agent_generate_methods_inside_class = no in file arith.tpl

  extern function void build_phase(uvm_phase phase);
  extern function void connect_phase(uvm_phase phase);
  extern function uvm_active_passive_enum get_is_active();

  // You can insert code here by setting agent_inc_inside_class in file arith.tpl

endclass : arith_agent 


function  arith_agent::new(string name, uvm_component parent);
  super.new(name, parent);
  analysis_port = new("analysis_port", this);
endfunction : new


// You can remove build/connect_phase and get_is_active by setting agent_generate_methods_after_class = no in file arith.tpl

function void arith_agent::build_phase(uvm_phase phase);

  // You can insert code here by setting agent_prepend_to_build_phase in file arith.tpl

  if (!uvm_config_db #(arith_config)::get(this, "", "config", m_config))
    `uvm_error(get_type_name(), "arith config not found")

  m_monitor     = arith_monitor    ::type_id::create("m_monitor", this);

  if (get_is_active() == UVM_ACTIVE)
  begin
    m_driver    = arith_driver     ::type_id::create("m_driver", this);
    m_sequencer = arith_sequencer_t::type_id::create("m_sequencer", this);
  end

  // You can insert code here by setting agent_append_to_build_phase in file arith.tpl

endfunction : build_phase


function void arith_agent::connect_phase(uvm_phase phase);
  if (m_config.vif == null)
    `uvm_warning(get_type_name(), "arith virtual interface is not set!")

  m_monitor.vif      = m_config.vif;
  m_monitor.m_config = m_config;
  m_monitor.analysis_port.connect(analysis_port);

  if (get_is_active() == UVM_ACTIVE)
  begin
    m_driver.seq_item_port.connect(m_sequencer.seq_item_export);
    m_driver.vif      = m_config.vif;
    m_driver.m_config = m_config;
  end

  // You can insert code here by setting agent_append_to_connect_phase in file arith.tpl

endfunction : connect_phase


function uvm_active_passive_enum arith_agent::get_is_active();
  if (m_is_active == -1)
  begin
    if (uvm_config_db#(uvm_bitstream_t)::get(this, "", "is_active", m_is_active))
    begin
      if (m_is_active != m_config.is_active)
        `uvm_warning(get_type_name(), "is_active field in config_db conflicts with config object")
    end
    else 
      m_is_active = m_config.is_active;
  end
  return uvm_active_passive_enum'(m_is_active);
endfunction : get_is_active


// You can insert code here by setting agent_inc_after_class in file arith.tpl

`endif // ARITH_AGENT_SV

