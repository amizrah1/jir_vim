" Vim syntax file
" Language:	SystemVerilog (superset extension of Verilog)
" Version: 2.0

let b:current_syntax = "systemverilog"

syntax keyword svTodo TODO contained
syntax match svLineComment "//.*" contains=svTodo
syntax region svBlockComment start="/\*" end="\*/" contains=svTodo
syntax keyword svBoolean true false TRUE FALSE
syntax region svString start=+"+ skip=+\\"+ end=+"+
syntax keyword svType real realtime event reg wire integer logic bit time byte chandle genvar signed unsigned shortint shortreal string void int specparam
syntax keyword svDirection input output inout ref
syntax keyword svStorageClass parameter localparam virtual var protected rand const static automatic extern forkjoin export import
syntax match svInvPre "`\(\K\k*\)*\>"
syntax match svPreProc "`\(__FILE__\|__LINE__\|begin_keywords\|celldefine\|default_nettype\|end_keywords\|endcelldefine\|include\|line\|nounconnected_drive\|pragma\|resetall\|timescale\|unconnected_drive\|undef\|undefineall\)\>"
syntax match svPreCondit "`\(else\|elsif\|endif\|ifdef\|ifndef\)\>"
syntax match svInclude "`include\>"
syntax match svDefine "`define\>"
syntax keyword svConditional if else iff
syntax match svLabel "\v^\W*[a-zA-Z_]+[a-zA-Z_0-9]*\s*(\[.{-}\])?\s*:"he=e-1 contained
syntax region svCase matchgroup=svConditional start="\<casez\|casex\|case\>" end="\<endcase\>" contains=ALL
syntax keyword svRepeat for foreach do while forever repeat
syntax keyword svKeyword fork join join_any join_none begin end module endmodule function endfunction task endtask always always_ff always_latch always_comb initial this generate endgenerate config endconfig class endclass clocking endclocking interface endinterface module endmodule package endpackage modport posedge negedge edge defparam assign deassign alias return disable wait continue and buf bufif0 bufif1 nand nor not or xnor xor tri tri0 tri1 triand trior trireg pull0 pull1 pullup pulldown cmos default endprimitive endspecify endtable force highz0 highz1 ifnone large macromodule medium nmos notif0 notif1 pmos primitive rcmos release rnmos rpmos rtran rtranif0 rtranif1 scalared small specify strong0 strong1 supply0 supply1 table tran tranif0 tranif1 vectored wand weak0 weak1 wor cell design incdir liblist library noshowcancelled pulsestyle_ondetect pulsestyle_onevent showcancelled use instance uwire assert assume before bind bins binsof break constraint context cover covergroup coverpoint cross dist endgroup endprogram endproperty endsequence enum expect extends final first_match ignore_bins illegal_bins inside intersect local longint matches new null packed priority program property pure randc randcase randsequence sequence solve struct super tagged throughout timeprecision timeunit type typedef union unique wait_order wildcard with within accept_on checker endchecker eventually global implies let nexttime reject_on restrict s_always s_eventually s_nexttime s_until s_until_with strong sync_accept_on sync_reject_on unique0 until until_with untyped weak implements interconnect nettype soft
syntax match svInteger "\<\(\.\)\@<![0-9_]\+\(\s*['.]\)\@!\>"
syntax match svInteger "\(\<[0-9_]\+\s*\)\?'\(s\|S\)\?\(d\|D\)\s*[0-9_ZzXx?]\+"
syntax match svInteger "\(\<[0-9_]\+\s*\)\?'\(s\|S\)\?\(h\|H\)\s*[0-9a-fA-F_ZzXx?]\+"
syntax match svInteger "\(\<[0-9_]\+\s*\)\?'\(s\|S\)\?\(o\|O\)\s*[0-7_ZzXx?]\+"
syntax match svInteger "\(\<[0-9_]\+\s*\)\?'\(s\|S\)\?\(b\|B\)\s*[01_ZzXx?]\+"
syntax match svInteger "\<'\(d\|D\|h\|H\|o\|O\|b\|B\)\>"
syntax match svInteger "'[01xXzZ?]\>"
syntax match svReal "\<[0-9_]\+\.[0-9_]\+\(\(e\|E\)[+-]\?[0-9_]\+\)\?\>"
syntax match svReal "\<[0-9_]\+\(e\|E\)[+-]\?[0-9_]\+\>"
syntax keyword svStructure struct union enum
syntax keyword svTypedef typedef
syntax match svInvSystemFunction "\$\(\K\k*\)"
syntax match svSystemFunction "\$\(display\|finish\|stop\|exit\|realtime\|stime\|time\|printtimescale\|timeformat\|bitstoreal\|realtobits\|bitstoshortreal\|shortrealtobits\|itor\|rtoi\|signed\|unsigned\|cast\|bits\|isunbounded\|typename\|unpacked_dimensions\|dimensions\|left\|right\|low\|high\|increment\|size\|clog2\|asin\|ln\|acos\|log10\|atan\|exp\|atan2\|sqrt\|hypot\|pow\|sinh\|floor\|cosh\|ceil\|tanh\|sin\|asinh\|cos\|acosh\|tan\|atanh\|countbits\|countones\|onehot\|onehot0\|isunknown\|fatal\|error\|warning\|info\|fatal\|error\|warning\|info\|asserton\|assertoff\|assertkill\|assertcontrol\|assertpasson\|assertpassoff\|assertfailon\|assertfailoff\|assertnonvacuouson\|assertvacuousoff\|sampled\|rose\|fell\|stable\|changed\|past\|past_gclk\|rose_gclk\|fell_gclk\|stable_gclk\|changed_gclk\|future_gclk\|rising_gclk\|falling_gclk\|steady_gclk\|changing_gclk\|coverage_control\|coverage_get_max\|coverage_get\|coverage_merge\|coverage_save\|get_coverage\|set_coverage_db_name\|load_coverage_db\|random\|urandom\|urandom_range\|dist_chi_square\|dist_erlang\|dist_exponential\|dist_normal\|dist_poisson\|dist_t\|dist_uniform\|q_initialize\|q_add\|q_remove\|q_full\|q_exam\|asyncandarray\|asyncandplane\|asyncnandarray\|asyncnandplane\|asyncorarray\|asyncorplane\|asyncnorarray\|asyncnorplane\|syncandarray\|syncandplane\|syncnandarray\|syncnandplane\|syncorarray\|syncorplane\|syncnorarray\|syncnorplane\|system\|contained\|transparent\)\>"
syntax match svObjectFunctions "\.\(num\|size\|delete\|exists\|first\|last\|next\|prev\|insert\|pop_front\|pop_back\|push_front\|push_back\|find\|find_index\|find_first\|find_first_index\|find_last\|find_last_index\|min\|max\|reverse\|sort\|rsort\|shuffle\|sum\|product\|and\|or\|xor\)\>\(\s\|\n\)*("he=e-1
syntax match svOperator "\(\~\|&\||\|\^\|=\|!\|?\|:\|@\|<\|>\|%\|+\|-\|\*\|\/[\/\*]\@!\)"
syntax match svDelimiter "\({\|}\|(\|)\)"

highlight! default link svTodo Todo
highlight! default link svLineComment Comment
highlight! default link svBlockComment Comment
highlight! default link svBoolean Boolean
highlight! default link svString String
highlight! default link svType Type
highlight! default link svDirection StorageClass
highlight! default link svStorageClass StorageClass
highlight! default link svPreProc PreProc
highlight! default link svPreCondit PreCondit
highlight! default link svInclude Include
highlight! default link svDefine Define
highlight! default link svConditional Conditional
highlight! default link svLabel Label
highlight! default link svRepeat Repeat
highlight! default link svKeyword Keyword
highlight! default link svInteger Number
highlight! default link svReal Number
highlight! default link svStructure Structure
highlight! default link svTypedef Typedef
highlight! default link svSystemFunction Function
highlight! default link svOperator Operator
highlight! default link svDelimiter Delimiter
highlight! default link svObjectFunctions Function

syn sync lines=1000

"##########################################################
"       SystemVerilog Syntax
"##########################################################

syn keyword verilogStatement   always_comb always_ff always_latch
syn keyword verilogStatement   class endclass
syn keyword verilogStatement   virtual local const protected
syn keyword verilogStatement   package endpackage
syn keyword verilogStatement   rand randc constraint randomize
syn keyword verilogStatement   with inside dist
syn keyword verilogStatement   randcase
syn keyword verilogStatement   sequence endsequence randsequence 
syn keyword verilogStatement   get_randstate set_randstate
syn keyword verilogStatement   srandom
syn keyword verilogStatement   logic bit byte time
syn keyword verilogStatement   int longint shortint
syn keyword verilogStatement   struct packed
syn keyword verilogStatement   final
syn keyword verilogStatement   import export
syn keyword verilogStatement   context pure 
syn keyword verilogStatement   void shortreal chandle string
syn keyword verilogStatement   clocking endclocking
syn keyword verilogStatement   interface endinterface modport
syn keyword verilogStatement   cover covergroup coverpoint endgroup
syn keyword verilogAssertion   property endproperty
syn keyword verilogStatement   program endprogram
syn keyword verilogStatement   bins binsof illegal_bins ignore_bins
syn keyword verilogStatement   alias matches solve static assert
syn keyword verilogStatement   assume super before expect bind
syn keyword verilogStatement   extends null tagged extern this
syn keyword verilogStatement   first_match throughout timeprecision
syn keyword verilogStatement   timeunit priority type union 
syn keyword verilogStatement   uwire var cross ref wait_order intersect
syn keyword verilogStatement   wildcard within
syn keyword verilogStatement   triggered
syn keyword verilogStatement   std
syn keyword verilogStatement   new

syn keyword verilogTypeDef     typedef enum

syn keyword verilogConditional iff unique

syn keyword verilogRepeat      return break continue
syn keyword verilogRepeat      do while foreach
syn keyword verilogRepeat      forever repeat while for

syn keyword verilogLabel       join_any join_none forkjoin

syn keyword verilogStatement   always and assign automatic buf
syn keyword verilogStatement   bufif0 bufif1 cell cmos
syn keyword verilogStatement   config deassign defparam design
syn keyword verilogStatement   disable edge endconfig
syn keyword verilogStatement   endfunction endgenerate endmodule
syn keyword verilogStatement   endprimitive endspecify endtable endtask
syn keyword verilogStatement   force function
syn keyword verilogStatement   generate genvar highz0 highz1 ifnone
syn keyword verilogStatement   incdir include initial inout input ref
syn keyword verilogStatement   instance large liblist
syn keyword verilogStatement   library localparam macromodule medium
syn keyword verilogStatement   module nand negedge nmos nor
syn keyword verilogStatement   noshowcancelled not notif0 notif1 or
syn keyword verilogStatement   output parameter pmos posedge primitive
syn keyword verilogStatement   pull0 pull1 pulldown pullup
syn keyword verilogStatement   pulsestyle_onevent pulsestyle_ondetect
syn keyword verilogStatement   rcmos realtime release
syn keyword verilogStatement   rnmos rpmos rtran rtranif0 rtranif1
syn keyword verilogStatement   scalared showcancelled small
syn keyword verilogStatement   specify specparam strong0 strong1
syn keyword verilogStatement   supply0 supply1 table task tran
syn keyword verilogStatement   tranif0 tranif1 tri tri0 tri1 triand
syn keyword verilogStatement   trior trireg use vectored wait
syn keyword verilogStatement   wand weak0 weak1 wire wor xnor xor
syn keyword verilogFork        fork join join_none join_any 
syn keyword verilogLabel       begin end 
syn keyword verilogStatement   static automatic const
syn keyword verilogConditional if else case casex casez default endcase

syn keyword verilogStatement   import class endclass extends virtual local protected
syn keyword verilogStatement   new interface endinterface modport extern forkjoin package
syn keyword verilogStatement   rand constraint typedef randc
syn keyword verilogStatement   assert covergroup endgroup coverpoint

syn keyword verilogType int string enum signed unsigned bit void logic integer reg real time event semaphore

"OVM support
syn keyword verilogType analysis_fifo analysis_if avm_transport_imp avm_virtual_class
syn keyword verilogType cdns_hierarchy_only_printer cdns_list_printer cdns_phase_process_watcher
syn keyword verilogType default_report_server ovm_agent ovm_algorithmic_comparator
syn keyword verilogType ovm_analysis_export ovm_analysis_imp ovm_analysis_port ovm_barrier
syn keyword verilogType ovm_barrier_pool ovm_blocking_get_export ovm_blocking_get_imp
syn keyword verilogType ovm_blocking_get_peek_export ovm_blocking_get_peek_imp
syn keyword verilogType ovm_blocking_get_peek_port ovm_blocking_get_port ovm_blocking_master_export
syn keyword verilogType ovm_blocking_master_imp ovm_blocking_master_port ovm_blocking_peek_export
syn keyword verilogType ovm_blocking_peek_imp ovm_blocking_peek_port ovm_blocking_put_export
syn keyword verilogType ovm_blocking_put_imp ovm_blocking_put_port ovm_blocking_slave_export
syn keyword verilogType ovm_blocking_slave_imp ovm_blocking_slave_port ovm_blocking_transport_export
syn keyword verilogType ovm_blocking_transport_imp ovm_blocking_transport_port ovm_built_in_clone
syn keyword verilogType ovm_built_in_comp ovm_built_in_converter ovm_built_in_pair
syn keyword verilogType ovm_class_clone ovm_class_comp ovm_class_converter ovm_class_pair
syn keyword verilogType ovm_comparer ovm_component ovm_component_registry ovm_config_setting
syn keyword verilogType ovm_connector ovm_connector_base ovm_copy_map ovm_driver ovm_env ovm_event
syn keyword verilogType ovm_event_callback ovm_event_pool ovm_factory ovm_factory_override
syn keyword verilogType ovm_get_export ovm_get_imp ovm_get_peek_export ovm_get_peek_imp
syn keyword verilogType ovm_get_peek_port ovm_get_port ovm_hash ovm_hier_printer_knobs
syn keyword verilogType ovm_if_container ovm_in_order_built_in_comparator
syn keyword verilogType ovm_in_order_class_comparator ovm_in_order_comparator
syn keyword verilogType ovm_int_config_setting ovm_line_printer ovm_master_export ovm_master_imp
syn keyword verilogType ovm_master_port ovm_monitor ovm_nonblocking_get_export
syn keyword verilogType ovm_nonblocking_get_imp ovm_nonblocking_get_peek_export
syn keyword verilogType ovm_nonblocking_get_peek_imp ovm_nonblocking_get_peek_port
syn keyword verilogType ovm_nonblocking_get_port ovm_nonblocking_master_export
syn keyword verilogType ovm_nonblocking_master_imp ovm_nonblocking_master_port
syn keyword verilogType ovm_nonblocking_peek_export ovm_nonblocking_peek_imp
syn keyword verilogType ovm_nonblocking_peek_port ovm_nonblocking_put_export
syn keyword verilogType ovm_nonblocking_put_imp ovm_nonblocking_put_port
syn keyword verilogType ovm_nonblocking_slave_export ovm_nonblocking_slave_imp
syn keyword verilogType ovm_nonblocking_slave_port ovm_nonblocking_transport_export
syn keyword verilogType ovm_nonblocking_transport_imp ovm_nonblocking_transport_port
syn keyword verilogType ovm_object ovm_object_config_setting ovm_object_registry ovm_object_wrapper
syn keyword verilogType ovm_options_container ovm_packer ovm_peek_export ovm_peek_imp ovm_peek_port
syn keyword verilogType ovm_port_base ovm_port_base_base ovm_printer ovm_printer_knobs
syn keyword verilogType ovm_put_export ovm_put_imp ovm_put_port ovm_random_stimulus ovm_recorder
syn keyword verilogType ovm_report_global_server ovm_report_handler ovm_report_object
syn keyword verilogType ovm_report_server ovm_reporter ovm_req_rsp_driver ovm_root ovm_scope_stack
syn keyword verilogType ovm_scoreboard ovm_seq_item_prod_if ovm_slave_export ovm_slave_imp
syn keyword verilogType ovm_slave_port ovm_status_container ovm_string_config_setting ovm_subscriber
syn keyword verilogType ovm_table_printer ovm_table_printer_knobs ovm_test ovm_text_recorder
syn keyword verilogType ovm_threaded_component ovm_transaction ovm_transport_export
syn keyword verilogType ovm_transport_imp ovm_transport_port ovm_tree_printer ovm_tree_printer_knobs
syn keyword verilogType ovm_urm_message ovm_urm_message_format ovm_urm_override_operator
syn keyword verilogType ovm_urm_override_request ovm_urm_report_server ovm_void stream_info
syn keyword verilogType tlm_analysis_fifo tlm_b_get_export tlm_b_get_port tlm_b_put_export
syn keyword verilogType tlm_b_put_port tlm_blocking_get_if tlm_blocking_get_peek_if
syn keyword verilogType tlm_blocking_master_if tlm_blocking_peek_if tlm_blocking_put_if
syn keyword verilogType tlm_blocking_slave_if tlm_blocking_transport_if tlm_event tlm_fifo
syn keyword verilogType tlm_fifo_base tlm_get_export tlm_get_if tlm_get_peek_if tlm_get_port
syn keyword verilogType tlm_if_base tlm_master_if tlm_nb_get_export tlm_nb_get_port
syn keyword verilogType tlm_nb_put_export tlm_nb_put_port tlm_nonblocking_get_if
syn keyword verilogType tlm_nonblocking_get_peek_if tlm_nonblocking_master_if
syn keyword verilogType tlm_nonblocking_peek_if tlm_nonblocking_put_if tlm_nonblocking_slave_if
syn keyword verilogType tlm_nonblocking_transport_if tlm_peek_if tlm_put_export tlm_put_if
syn keyword verilogType tlm_put_port tlm_req_rsp_channel tlm_slave_if tlm_transport_channel
syn keyword verilogType tlm_transport_if tx_handle urm_command_line_processor_c urm_fifo
syn keyword verilogType ovm_scenario_base ovm_scenario ovm_scenario_noparam ovm_stimulus_scenario
syn keyword verilogType ovm_scenario_controller_base ovm_scenario_controller
syn keyword verilogType ovm_scenario_driver_base tlm_scenario_fifo tlm_scenario_req_rsp_channel
syn keyword verilogType ovm_scenario_driver ovm_scenario_driver_noparam request_driver
syn keyword verilogType ovm_req_rsp_sequence ovm_sequence ovm_random_sequence
syn keyword verilogType ovm_exhaustive_sequence ovm_simple_sequence ovm_sequence_item
syn keyword verilogType ovm_seq_item_cons_if ovm_sequencer ovm_seq_prod_if ovm_sequencer_base
syn keyword verilogType ovm_seq_cons_if ovm_virtual_sequencer

"UVM support
syn keyword verilogTypeDef	    uvm_bitstream_t
syn keyword verilogTypeDef	    uvm_reg_addr_logic_t
syn keyword verilogTypeDef	    uvm_reg_addr_t
syn keyword verilogTypeDef	    uvm_reg_byte_en_t
syn keyword verilogTypeDef	    uvm_reg_cvr_t
syn keyword verilogTypeDef	    uvm_reg_data_logic_t
syn keyword verilogTypeDef	    uvm_reg_data_t
syn keyword verilogTypeDef	    uvm_active_passive_enum
syn keyword verilogTypeDef	    uvm_radix_enum
syn keyword verilogTypeDef	    uvm_recursion_policy_enum
syn keyword verilogTypeDef	    uvm_sequence_state_enum
syn keyword verilogStatement	uvm_access_e
syn keyword verilogStatement	uvm_action
syn keyword verilogStatement	uvm_agent
syn keyword verilogStatement	uvm_analysis_export
syn keyword verilogStatement	uvm_analysis_imp
syn keyword verilogStatement	uvm_analysis_port
syn keyword verilogStatement	uvm_barrier
syn keyword verilogStatement	uvm_bits_to_string
syn keyword verilogStatement	uvm_bottomup_phase
syn keyword verilogStatement	uvm_build_phase
syn keyword verilogStatement	uvm_callback
syn keyword verilogStatement	uvm_callback_iter
syn keyword verilogStatement	uvm_callbacks_objection
syn keyword verilogStatement	uvm_check_e
syn keyword verilogStatement	uvm_check_phase
syn keyword verilogStatement	uvm_cmdline_processor
syn keyword verilogStatement	uvm_comparer
syn keyword verilogStatement	uvm_component
syn keyword verilogStatement	uvm_config_db
syn keyword verilogStatement	uvm_config_db_options
syn keyword verilogStatement	uvm_configure_phase
syn keyword verilogStatement	uvm_connect_phase
syn keyword verilogStatement	uvm_coverage_model_e
syn keyword verilogStatement	uvm_default_comparer
syn keyword verilogStatement	uvm_default_line_printer
syn keyword verilogStatement	uvm_default_packer
syn keyword verilogStatement	uvm_default_printer
syn keyword verilogStatement	uvm_default_recorder
syn keyword verilogStatement	uvm_default_table_printer
syn keyword verilogStatement	uvm_default_tree_printer
syn keyword verilogStatement	uvm_domain
syn keyword verilogStatement	uvm_elem_kind_e
syn keyword verilogStatement	uvm_end_of_elaboration_phase
syn keyword verilogStatement	uvm_endianness_e
syn keyword verilogStatement	uvm_env
syn keyword verilogStatement	uvm_event
syn keyword verilogStatement	uvm_event_callback
syn keyword verilogStatement	uvm_extract_phase
syn keyword verilogStatement	uvm_factory
syn keyword verilogStatement	uvm_final_phase
syn keyword verilogStatement	uvm_hdl_check_path
syn keyword verilogStatement	uvm_hdl_deposit
syn keyword verilogStatement	uvm_hdl_force
syn keyword verilogStatement	uvm_hdl_force_time
syn keyword verilogStatement	uvm_hdl_path_concat
syn keyword verilogStatement	uvm_hdl_path_slice
syn keyword verilogStatement	uvm_hdl_read
syn keyword verilogStatement	uvm_hdl_release
syn keyword verilogStatement	uvm_hdl_release_and_read
syn keyword verilogStatement	uvm_heartbeat
syn keyword verilogStatement	uvm_hier_e
syn keyword verilogStatement	uvm_is_match
syn keyword verilogStatement	uvm_line_printer
syn keyword verilogStatement	uvm_main_phase
syn keyword verilogStatement	uvm_mem
syn keyword verilogStatement	uvm_mem_access_seq
syn keyword verilogStatement	uvm_mem_cb
syn keyword verilogStatement	uvm_mem_cb_iter
syn keyword verilogStatement	uvm_mem_mam
syn keyword verilogStatement	uvm_mem_mam_cfg
syn keyword verilogStatement	uvm_mem_mam_policy
syn keyword verilogStatement	uvm_mem_region
syn keyword verilogStatement	uvm_mem_shared_access_seq
syn keyword verilogStatement	uvm_mem_single_access_seq
syn keyword verilogStatement	uvm_mem_single_walk_seq
syn keyword verilogStatement	uvm_mem_walk_seq
syn keyword verilogStatement	uvm_monitor
syn keyword verilogStatement	uvm_object
syn keyword verilogStatement	uvm_object_wrapper
syn keyword verilogStatement	uvm_objection
syn keyword verilogStatement	uvm_objection_callback
syn keyword verilogStatement	uvm_objection_event
syn keyword verilogStatement	uvm_packer
syn keyword verilogStatement	uvm_path_e
syn keyword verilogStatement	uvm_phase
syn keyword verilogStatement	uvm_phase_state
syn keyword verilogStatement	uvm_phase_transition
syn keyword verilogStatement	uvm_phase_type
syn keyword verilogStatement	uvm_port_component_base
syn keyword verilogStatement	uvm_port_type_e
syn keyword verilogStatement	uvm_post_configure_phase
syn keyword verilogStatement	uvm_post_main_phase
syn keyword verilogStatement	uvm_post_reset_phase
syn keyword verilogStatement	uvm_post_shutdown_phase
syn keyword verilogStatement	uvm_pre_configure_phase
syn keyword verilogStatement	uvm_pre_main_phase
syn keyword verilogStatement	uvm_pre_reset_phase
syn keyword verilogStatement	uvm_pre_shutdown_phase
syn keyword verilogStatement	uvm_predict_e
syn keyword verilogStatement	uvm_printer
syn keyword verilogStatement	uvm_printer_knobs
syn keyword verilogStatement	uvm_recorder
syn keyword verilogStatement	uvm_reg
syn keyword verilogStatement	uvm_reg_access_seq
syn keyword verilogStatement	uvm_reg_adapter
syn keyword verilogStatement	uvm_reg_backdoor
syn keyword verilogStatement	uvm_reg_bd_cb
syn keyword verilogStatement	uvm_reg_bd_cb_iter
syn keyword verilogStatement	uvm_reg_bit_bash_seq
syn keyword verilogStatement	uvm_reg_block
syn keyword verilogStatement	uvm_reg_bus_op
syn keyword verilogStatement	uvm_reg_cb
syn keyword verilogStatement	uvm_reg_cb_iter
syn keyword verilogStatement	uvm_reg_cbs
syn keyword verilogStatement	uvm_reg_field
syn keyword verilogStatement	uvm_reg_field_cb
syn keyword verilogStatement	uvm_reg_field_cb_iter
syn keyword verilogStatement	uvm_reg_fifo
syn keyword verilogStatement	uvm_reg_file
syn keyword verilogStatement	uvm_reg_frontdoor
syn keyword verilogStatement	uvm_reg_hw_reset_seq
syn keyword verilogStatement	uvm_reg_indirect_data
syn keyword verilogStatement	uvm_reg_item
syn keyword verilogStatement	uvm_reg_map
syn keyword verilogStatement	uvm_reg_mem_access_seq
syn keyword verilogStatement	uvm_reg_mem_built_in_seq
syn keyword verilogStatement	uvm_reg_mem_hdl_paths_seq
syn keyword verilogStatement	uvm_reg_mem_shared_access_seq
syn keyword verilogStatement	uvm_reg_mem_tests_e
syn keyword verilogStatement	uvm_reg_predictor
syn keyword verilogStatement	uvm_reg_read_only_cbs
syn keyword verilogStatement	uvm_reg_sequence
syn keyword verilogStatement	uvm_reg_shared_access_seq
syn keyword verilogStatement	uvm_reg_single_access_seq
syn keyword verilogStatement	uvm_reg_single_bit_bash_seq
syn keyword verilogStatement	uvm_reg_tlm_adapter
syn keyword verilogStatement	uvm_reg_write_only_cbs
syn keyword verilogStatement	uvm_report
syn keyword verilogStatement	uvm_report_catcher
syn keyword verilogStatement	uvm_report_enabled
syn keyword verilogStatement	uvm_report_error
syn keyword verilogStatement	uvm_report_fatal
syn keyword verilogStatement	uvm_report_handler
syn keyword verilogStatement	uvm_report_info
syn keyword verilogStatement	uvm_report_object
syn keyword verilogStatement	uvm_report_phase
syn keyword verilogStatement	uvm_report_server
syn keyword verilogStatement	uvm_report_warning
syn keyword verilogStatement	uvm_reset_phase
syn keyword verilogStatement	uvm_resource_base
syn keyword verilogStatement	uvm_resource_db
syn keyword verilogStatement	uvm_resource_db_options
syn keyword verilogStatement	uvm_resource_options
syn keyword verilogStatement	uvm_resource_pool
syn keyword verilogStatement	uvm_resource_types
syn keyword verilogStatement	uvm_root
syn keyword verilogStatement	uvm_run_phase
syn keyword verilogStatement	uvm_scoreboard
syn keyword verilogStatement	uvm_sequence_base
syn keyword verilogStatement	uvm_sequence_item
syn keyword verilogStatement	uvm_sequence_lib_mode
syn keyword verilogStatement	uvm_sequencer_arb_mode
syn keyword verilogStatement	uvm_sequencer_base
syn keyword verilogStatement	uvm_severity
syn keyword verilogStatement	uvm_shutdown_phase
syn keyword verilogStatement	uvm_split_string
syn keyword verilogStatement	uvm_start_of_simulation_phase
syn keyword verilogStatement	uvm_status_e
syn keyword verilogStatement	uvm_string_to_bits
syn keyword verilogStatement	uvm_subscriber
syn keyword verilogStatement	uvm_table_printer
syn keyword verilogStatement	uvm_task_phase
syn keyword verilogStatement	uvm_test
syn keyword verilogStatement	uvm_tlm_analysis_fifo
syn keyword verilogStatement	uvm_tlm_b_initiator_socket
syn keyword verilogStatement	uvm_tlm_b_initiator_socket_base
syn keyword verilogStatement	uvm_tlm_b_passthrough_initiator_socket
syn keyword verilogStatement	uvm_tlm_b_passthrough_initiator_socket_base
syn keyword verilogStatement	uvm_tlm_b_passthrough_target_socket
syn keyword verilogStatement	uvm_tlm_b_passthrough_target_socket_base
syn keyword verilogStatement	uvm_tlm_b_target_socket
syn keyword verilogStatement	uvm_tlm_b_target_socket_base
syn keyword verilogStatement	uvm_tlm_b_transport_export
syn keyword verilogStatement	uvm_tlm_b_transport_imp
syn keyword verilogStatement	uvm_tlm_b_transport_port
syn keyword verilogStatement	uvm_tlm_command_e
syn keyword verilogStatement	uvm_tlm_extension
syn keyword verilogStatement	uvm_tlm_extension_base
syn keyword verilogStatement	uvm_tlm_fifo
syn keyword verilogStatement	uvm_tlm_generic_payload
syn keyword verilogStatement	uvm_tlm_gp
syn keyword verilogStatement	uvm_tlm_if
syn keyword verilogStatement	uvm_tlm_nb_initiator_socket
syn keyword verilogStatement	uvm_tlm_nb_initiator_socket_base
syn keyword verilogStatement	uvm_tlm_nb_passthrough_initiator_socket
syn keyword verilogStatement	uvm_tlm_nb_passthrough_initiator_socket_base
syn keyword verilogStatement	uvm_tlm_nb_passthrough_target_socket
syn keyword verilogStatement	uvm_tlm_nb_passthrough_target_socket_base
syn keyword verilogStatement	uvm_tlm_nb_target_socket
syn keyword verilogStatement	uvm_tlm_nb_target_socket_base
syn keyword verilogStatement	uvm_tlm_nb_transport_bw_export
syn keyword verilogStatement	uvm_tlm_nb_transport_bw_imp
syn keyword verilogStatement	uvm_tlm_nb_transport_bw_port
syn keyword verilogStatement	uvm_tlm_nb_transport_fw_export
syn keyword verilogStatement	uvm_tlm_nb_transport_fw_imp
syn keyword verilogStatement	uvm_tlm_nb_transport_fw_port
syn keyword verilogStatement	uvm_tlm_phase_e
syn keyword verilogStatement	uvm_tlm_response_status_e
syn keyword verilogStatement	uvm_tlm_sync_e
syn keyword verilogStatement	uvm_tlm_time
syn keyword verilogStatement	uvm_top
syn keyword verilogStatement	uvm_root
syn keyword verilogStatement	uvm_topdown_phase
syn keyword verilogStatement	uvm_transaction
syn keyword verilogStatement	uvm_tree_printer
syn keyword verilogStatement	uvm_utils
syn keyword verilogStatement	uvm_verbosity
syn keyword verilogStatement	uvm_void
syn keyword verilogStatement	uvm_vreg
syn keyword verilogStatement	uvm_vreg_cb
syn keyword verilogStatement	uvm_vreg_cbs
syn keyword verilogStatement	uvm_vreg_cb_iter
syn keyword verilogStatement	uvm_vreg_cbs
syn keyword verilogStatement	uvm_vreg_cbs
syn keyword verilogStatement	uvm_vreg_field
syn keyword verilogStatement	uvm_vreg_field_cb
syn keyword verilogStatement	uvm_vreg_field_cbs
syn keyword verilogStatement	uvm_vreg_field_cb_iter
syn keyword verilogStatement	uvm_vreg_field_cbs
syn keyword verilogStatement	uvm_vreg_field_cbs
syn keyword verilogStatement	uvm_wait_for_nba_region
syn keyword verilogStatement	uvm_wait_op

syn keyword verilogStatement    slu_add_db
syn keyword verilogStatement    slu_add_db_and_cfg
syn keyword verilogStatement    slu_add_test_phase
syn keyword verilogStatement    slu_add_to_seq_lib
syn keyword verilogStatement    slu_add_to_sequence_library
syn keyword verilogStatement    slu_agent_config_object
syn keyword verilogStatement    slu_agent_name_q_t
syn keyword verilogStatement    slu_agent_name_t
syn keyword verilogStatement    slu_agent_type_t
syn keyword verilogStatement    slu_allocate
syn keyword verilogStatement    slu_allocate_at_addr
syn keyword verilogStatement    slu_allocate_hier
syn keyword verilogStatement    slu_allocator_c
syn keyword verilogStatement    slu_array_container
syn keyword verilogStatement    slu_assert
syn keyword verilogStatement    slu_bag_c
syn keyword verilogStatement    slu_cfg_mgr_env
syn keyword verilogStatement    slu_common_macros
syn keyword verilogStatement    slu_config_event
syn keyword verilogStatement    slu_config_event_pool
syn keyword verilogStatement    slu_config_log_t
syn keyword verilogStatement    slu_config_manager_env
syn keyword verilogStatement    slu_config_obj
syn keyword verilogStatement    slu_config_object
syn keyword verilogStatement    slu_config_object_base
syn keyword verilogStatement    slu_config_objects
syn keyword verilogStatement    slu_config_queue
syn keyword verilogStatement    slu_container
syn keyword verilogStatement    slu_converter
syn keyword verilogStatement    slu_converter_macros
syn keyword verilogStatement    slu_create_converter_sequencer
syn keyword verilogStatement    slu_data_phase_mode_t
syn keyword verilogStatement    slu_deallocate
syn keyword verilogStatement    slu_deallocate_by_name
syn keyword verilogStatement    slu_deallocate_hier
syn keyword verilogStatement    slu_declare_basic_seq
syn keyword verilogStatement    slu_defines
syn keyword verilogStatement    slu_delay
syn keyword verilogStatement    slu_delay_kind_t
syn keyword verilogStatement    slu_do_mode_with
syn keyword verilogStatement    slu_do_on_mode_with
syn keyword verilogStatement    slu_do_on_pre_with
syn keyword verilogStatement    slu_do_pre_with
syn keyword verilogStatement    slu_dpi
syn keyword verilogStatement    slu_dpi_shift_left
syn keyword verilogStatement    slu_dpi_vector
syn keyword verilogStatement    slu_dpi_vector_bit
syn keyword verilogStatement    slu_dpi_vector_bool
syn keyword verilogStatement    slu_dpi_vector_byte
syn keyword verilogStatement    slu_dpi_vector_string
syn keyword verilogStatement    slu_dut_error
syn keyword verilogStatement    slu_emit_state
syn keyword verilogStatement    slu_empty_seq_for
syn keyword verilogStatement    slu_enum_utils
syn keyword verilogStatement    slu_env
syn keyword verilogStatement    slu_env_name
syn keyword verilogStatement    slu_envs
syn keyword verilogStatement    slu_error
syn keyword verilogStatement    slu_external_rtl_tlm_impl_macros
syn keyword verilogStatement    slu_fal_burn_all_fuses
syn keyword verilogStatement    slu_fal_burn_softstraps
syn keyword verilogStatement    slu_fal_mirror_desired
syn keyword verilogStatement    slu_fal_randomize
syn keyword verilogStatement    slu_fal_read_all_fuses
syn keyword verilogStatement    slu_fal_read_all_soft_straps
syn keyword verilogStatement    slu_fal_resense
syn keyword verilogStatement    slu_fal_reset_fuse_ram
syn keyword verilogStatement    slu_fal_reset_fuse_rom
syn keyword verilogStatement    slu_fal_set_default_constraint
syn keyword verilogStatement    slu_fal_set_lldd_default_constraint
syn keyword verilogStatement    slu_fal_set_shared_constraint
syn keyword verilogStatement    slu_fatal
syn keyword verilogStatement    slu_find_region_by_addr
syn keyword verilogStatement    slu_flow_c
syn keyword verilogStatement    slu_fork_sequence
syn keyword verilogStatement    slu_fuse
syn keyword verilogStatement    slu_fuse_access_t
syn keyword verilogStatement    slu_fuse_cont_desc
syn keyword verilogStatement    slu_fuse_encoding_value
syn keyword verilogStatement    slu_fuse_env
syn keyword verilogStatement    slu_fuse_feature
syn keyword verilogStatement    slu_fuse_feature_custom_value
syn keyword verilogStatement    slu_fuse_feature_value
syn keyword verilogStatement    slu_fuse_group
syn keyword verilogStatement    slu_fuse_header_pull_t
syn keyword verilogStatement    slu_fuse_id_share_t
syn keyword verilogStatement    slu_fuse_pull_data
syn keyword verilogStatement    slu_fuse_puller_opcode_t
syn keyword verilogStatement    slu_fuse_read
syn keyword verilogStatement    slu_fuse_read_128
syn keyword verilogStatement    slu_fuse_top
syn keyword verilogStatement    slu_fuse_top_feature
syn keyword verilogStatement    slu_fuse_topfeat_value
syn keyword verilogStatement    slu_fuse_types
syn keyword verilogStatement    slu_fuse_virtual_data
syn keyword verilogStatement    slu_fuse_write
syn keyword verilogStatement    slu_fuse_write_128
syn keyword verilogStatement    slu_generic_seq_read_access
syn keyword verilogStatement    slu_generic_seq_reset_access
syn keyword verilogStatement    slu_generic_seq_write_access
syn keyword verilogStatement    slu_get_db
syn keyword verilogStatement    slu_get_fuse
syn keyword verilogStatement    slu_get_parent_seq
syn keyword verilogStatement    slu_get_phase_status
syn keyword verilogStatement    slu_get_primary_access
syn keyword verilogStatement    slu_get_region_name_by_addr
syn keyword verilogStatement    slu_get_sideband_access
syn keyword verilogStatement    slu_get_sm_region_addr
syn keyword verilogStatement    slu_get_time
syn keyword verilogStatement    slu_get_top_tb_env
syn keyword verilogStatement    slu_ibag
syn keyword verilogStatement    slu_ibag_c
syn keyword verilogStatement    slu_im
syn keyword verilogStatement    slu_im_add_intr_info
syn keyword verilogStatement    slu_im_env
syn keyword verilogStatement    slu_im_handler
syn keyword verilogStatement    slu_im_interrupt
syn keyword verilogStatement    slu_im_intr_info
syn keyword verilogStatement    slu_im_intr_name_t
syn keyword verilogStatement    slu_im_intr_trigger_t
syn keyword verilogStatement    slu_im_isr_object
syn keyword verilogStatement    slu_im_sequencer
syn keyword verilogStatement    slu_im_types
syn keyword verilogStatement    slu_im_wait_on_active_isrs
syn keyword verilogStatement    slu_im_wait_on_isr
syn keyword verilogStatement    slu_im_wait_on_isr_list
syn keyword verilogStatement    slu_info
syn keyword verilogStatement    slu_injector_agent%0d
syn keyword verilogStatement    slu_injector_agent0
syn keyword verilogStatement    slu_injector_size
syn keyword verilogStatement    slu_injector_sqcr
syn keyword verilogStatement    slu_integrity
syn keyword verilogStatement    slu_interrupt
syn keyword verilogStatement    slu_jump_test_phase
syn keyword verilogStatement    slu_len_kind_t
syn keyword verilogStatement    slu_level_t
syn keyword verilogStatement    slu_macros
syn keyword verilogStatement    slu_mem_read
syn keyword verilogStatement    slu_mem_read_128
syn keyword verilogStatement    slu_mem_read_256
syn keyword verilogStatement    slu_mem_read_bits
syn keyword verilogStatement    slu_mem_write
syn keyword verilogStatement    slu_mem_write_128
syn keyword verilogStatement    slu_mem_write_256
syn keyword verilogStatement    slu_message_macros
syn keyword verilogStatement    slu_msg
syn keyword verilogStatement    slu_msgt
syn keyword verilogStatement    slu_num_c
syn keyword verilogStatement    slu_object_bundle
syn keyword verilogStatement    slu_object_container
syn keyword verilogStatement    slu_ovm_macros
syn keyword verilogStatement    slu_pair_c
syn keyword verilogStatement    slu_phase_name_q_t
syn keyword verilogStatement    slu_phase_name_t
syn keyword verilogStatement    slu_phase_status_t
syn keyword verilogStatement    slu_pick_rand_addr
syn keyword verilogStatement    slu_pkg
syn keyword verilogStatement    slu_poll_signame
syn keyword verilogStatement    slu_print_ral_regs_info
syn keyword verilogStatement    slu_ral
syn keyword verilogStatement    slu_ral_access_path_t
syn keyword verilogStatement    slu_ral_access_sequence
syn keyword verilogStatement    slu_ral_addr_t
syn keyword verilogStatement    slu_ral_attr_base_test_seq
syn keyword verilogStatement    slu_ral_attr_t
syn keyword verilogStatement    slu_ral_backdoor
syn keyword verilogStatement    slu_ral_backdoor_t
syn keyword verilogStatement    slu_ral_bdf_t
syn keyword verilogStatement    slu_ral_be_t
syn keyword verilogStatement    slu_ral_cfg_data_t
syn keyword verilogStatement    slu_ral_chop_enum_t
syn keyword verilogStatement    slu_ral_chop_t
syn keyword verilogStatement    slu_ral_config_access_method
syn keyword verilogStatement    slu_ral_config_seq
syn keyword verilogStatement    slu_ral_coverage_t
syn keyword verilogStatement    slu_ral_data_t
syn keyword verilogStatement    slu_ral_defines
syn keyword verilogStatement    slu_ral_env
syn keyword verilogStatement    slu_ral_fid_t
syn keyword verilogStatement    slu_ral_field
syn keyword verilogStatement    slu_ral_field_get
syn keyword verilogStatement    slu_ral_field_get_val
syn keyword verilogStatement    slu_ral_field_set
syn keyword verilogStatement    slu_ral_field_valid
syn keyword verilogStatement    slu_ral_file
syn keyword verilogStatement    slu_ral_find_regname_by_offset
syn keyword verilogStatement    slu_ral_get
syn keyword verilogStatement    slu_ral_get_base_addr_val
syn keyword verilogStatement    slu_ral_get_bdf
syn keyword verilogStatement    slu_ral_get_bit
syn keyword verilogStatement    slu_ral_get_cfg_val
syn keyword verilogStatement    slu_ral_get_extended_id
syn keyword verilogStatement    slu_ral_get_file
syn keyword verilogStatement    slu_ral_get_msg_opcode
syn keyword verilogStatement    slu_ral_get_offset
syn keyword verilogStatement    slu_ral_get_portid
syn keyword verilogStatement    slu_ral_get_regname
syn keyword verilogStatement    slu_ral_get_sb_bar
syn keyword verilogStatement    slu_ral_get_sb_fid
syn keyword verilogStatement    slu_ral_get_user_attribute
syn keyword verilogStatement    slu_ral_macros
syn keyword verilogStatement    slu_ral_monitor
syn keyword verilogStatement    slu_ral_operation_t
syn keyword verilogStatement    slu_ral_pick_msg_opcode
syn keyword verilogStatement    slu_ral_query_t
syn keyword verilogStatement    slu_ral_randomize
syn keyword verilogStatement    slu_ral_read
syn keyword verilogStatement    slu_ral_read_and_check
syn keyword verilogStatement    slu_ral_read_and_check_field
syn keyword verilogStatement    slu_ral_read_and_check_fuses
syn keyword verilogStatement    slu_ral_read_bits
syn keyword verilogStatement    slu_ral_read_by_addr
syn keyword verilogStatement    slu_ral_read_field
syn keyword verilogStatement    slu_ral_read_lo_hi
syn keyword verilogStatement    slu_ral_readx
syn keyword verilogStatement    slu_ral_reg
syn keyword verilogStatement    slu_ral_reg_file
syn keyword verilogStatement    slu_ral_reg_trk
syn keyword verilogStatement    slu_ral_registry_macro
syn keyword verilogStatement    slu_ral_reset
syn keyword verilogStatement    slu_ral_reset_by_signame
syn keyword verilogStatement    slu_ral_reset_regs
syn keyword verilogStatement    slu_ral_reset_t
syn keyword verilogStatement    slu_ral_restore_order_s
syn keyword verilogStatement    slu_ral_rmw
syn keyword verilogStatement    slu_ral_rmw_bit
syn keyword verilogStatement    slu_ral_rmw_bits
syn keyword verilogStatement    slu_ral_root_space_t
syn keyword verilogStatement    slu_ral_rw_t
syn keyword verilogStatement    slu_ral_sai_t
syn keyword verilogStatement    slu_ral_sample_t
syn keyword verilogStatement    slu_ral_sequence_base
syn keyword verilogStatement    slu_ral_sequencer
syn keyword verilogStatement    slu_ral_set
syn keyword verilogStatement    slu_ral_space_t
syn keyword verilogStatement    slu_ral_test_ro_sequence
syn keyword verilogStatement    slu_ral_test_rw_sequence
syn keyword verilogStatement    slu_ral_test_sequence
syn keyword verilogStatement    slu_ral_transaction
syn keyword verilogStatement    slu_ral_types
syn keyword verilogStatement    slu_ral_write
syn keyword verilogStatement    slu_ral_write_by_addr
syn keyword verilogStatement    slu_ral_write_field
syn keyword verilogStatement    slu_ral_write_lo_hi
syn keyword verilogStatement    slu_reg
syn keyword verilogStatement    slu_region_name_q_t
syn keyword verilogStatement    slu_region_name_t
syn keyword verilogStatement    slu_register_component
syn keyword verilogStatement    slu_register_component_by_inst
syn keyword verilogStatement    slu_remove_all_allocations
syn keyword verilogStatement    slu_reset_domain_config
syn keyword verilogStatement    slu_reset_domain_lib
syn keyword verilogStatement    slu_resource
syn keyword verilogStatement    slu_resource_container
syn keyword verilogStatement    slu_resource_container_base
syn keyword verilogStatement    slu_resource_db
syn keyword verilogStatement    slu_resource_id_t
syn keyword verilogStatement    slu_resource_manager
syn keyword verilogStatement    slu_resource_mgr_c
syn keyword verilogStatement    slu_resourcedb_macros
syn keyword verilogStatement    slu_rla_file
syn keyword verilogStatement    slu_rm
syn keyword verilogStatement    slu_rm_env
syn keyword verilogStatement    slu_rtl_analysis_port_monitor
syn keyword verilogStatement    slu_rtl_analysis_port_monitor#
syn keyword verilogStatement    slu_rtl_tlm_macros
syn keyword verilogStatement    slu_run_sequence
syn keyword verilogStatement    slu_scan_dummy_chain_t
syn keyword verilogStatement    slu_scan_dummy_instr_t
syn keyword verilogStatement    slu_scan_env
syn keyword verilogStatement    slu_scan_op_t
syn keyword verilogStatement    slu_seq
syn keyword verilogStatement    slu_seq_create
syn keyword verilogStatement    slu_seq_kind
syn keyword verilogStatement    slu_seq_kind_t
syn keyword verilogStatement    slu_seq_type
syn keyword verilogStatement    slu_seq_type_list
syn keyword verilogStatement    slu_seqlib_state_t
syn keyword verilogStatement    slu_sequence
syn keyword verilogStatement    slu_sequence_base
syn keyword verilogStatement    slu_sequence_library
syn keyword verilogStatement    slu_sequence_library_cfg
syn keyword verilogStatement    slu_sequence_library_utils
syn keyword verilogStatement    slu_sequence_macros
syn keyword verilogStatement    slu_sequence_t
syn keyword verilogStatement    slu_sequence_type_utils
syn keyword verilogStatement    slu_sequencer
syn keyword verilogStatement    slu_sequencer_uvm
syn keyword verilogStatement    slu_sequences
syn keyword verilogStatement    slu_set_cfg_map
syn keyword verilogStatement    slu_set_cfg_mapname
syn keyword verilogStatement    slu_set_dpi_scope
syn keyword verilogStatement    slu_set_io_map
syn keyword verilogStatement    slu_set_io_mapname
syn keyword verilogStatement    slu_set_mem_map
syn keyword verilogStatement    slu_set_mem_mapname
syn keyword verilogStatement    slu_set_mem_region
syn keyword verilogStatement    slu_set_mem_regionname
syn keyword verilogStatement    slu_set_next_test_phase
syn keyword verilogStatement    slu_set_pri_access
syn keyword verilogStatement    slu_set_primary_access
syn keyword verilogStatement    slu_set_sb_access
syn keyword verilogStatement    slu_set_scope
syn keyword verilogStatement    slu_set_sideband_access
syn keyword verilogStatement    slu_set_test_phase_type
syn keyword verilogStatement    slu_set_verbosity
syn keyword verilogStatement    slu_set_verbosity_level
syn keyword verilogStatement    slu_sig_force
syn keyword verilogStatement    slu_sig_polling
syn keyword verilogStatement    slu_sig_release
syn keyword verilogStatement    slu_sm
syn keyword verilogStatement    slu_sm_addr_t
syn keyword verilogStatement    slu_sm_ag_env
syn keyword verilogStatement    slu_sm_ag_param_t
syn keyword verilogStatement    slu_sm_ag_query
syn keyword verilogStatement    slu_sm_ag_result
syn keyword verilogStatement    slu_sm_ag_status
syn keyword verilogStatement    slu_sm_ag_status_str
syn keyword verilogStatement    slu_sm_ag_status_t
syn keyword verilogStatement    slu_sm_ag_status_t-to-string
syn keyword verilogStatement    slu_sm_ag_tag
syn keyword verilogStatement    slu_sm_ag_type
syn keyword verilogStatement    slu_sm_ag_type=
syn keyword verilogStatement    slu_sm_agent_mode_t
syn keyword verilogStatement    slu_sm_am
syn keyword verilogStatement    slu_sm_am_agentcfgmap
syn keyword verilogStatement    slu_sm_am_agentcfgmap_type
syn keyword verilogStatement    slu_sm_am_agentinfo
syn keyword verilogStatement    slu_sm_am_agentiomap
syn keyword verilogStatement    slu_sm_am_agentiomap_type
syn keyword verilogStatement    slu_sm_am_agentmemmap
syn keyword verilogStatement    slu_sm_am_agentmemmap_type
syn keyword verilogStatement    slu_sm_am_agentroute
syn keyword verilogStatement    slu_sm_am_allocatedmap
syn keyword verilogStatement    slu_sm_am_cfgmap
syn keyword verilogStatement    slu_sm_am_cfgmap_type
syn keyword verilogStatement    slu_sm_am_env
syn keyword verilogStatement    slu_sm_am_iomap
syn keyword verilogStatement    slu_sm_am_iomap_type
syn keyword verilogStatement    slu_sm_am_memmap
syn keyword verilogStatement    slu_sm_am_memmap_type
syn keyword verilogStatement    slu_sm_am_new_agentinfo
syn keyword verilogStatement    slu_sm_am_new_agentinfo_by_name
syn keyword verilogStatement    slu_sm_am_new_agentroute
syn keyword verilogStatement    slu_sm_am_new_tag
syn keyword verilogStatement    slu_sm_am_new_tagrule
syn keyword verilogStatement    slu_sm_am_tag
syn keyword verilogStatement    slu_sm_am_tagmap
syn keyword verilogStatement    slu_sm_am_tagrule
syn keyword verilogStatement    slu_sm_am_type
syn keyword verilogStatement    slu_sm_am_type=
syn keyword verilogStatement    slu_sm_apply_inst_override
syn keyword verilogStatement    slu_sm_apply_override
syn keyword verilogStatement    slu_sm_array_var
syn keyword verilogStatement    slu_sm_array_var_assert
syn keyword verilogStatement    slu_sm_array_var_assert_get
syn keyword verilogStatement    slu_sm_array_var_assert_get_begin
syn keyword verilogStatement    slu_sm_array_var_assert_set
syn keyword verilogStatement    slu_sm_array_var_assert_set_begin
syn keyword verilogStatement    slu_sm_array_var_declare
syn keyword verilogStatement    slu_sm_array_var_get
syn keyword verilogStatement    slu_sm_array_var_get_begin
syn keyword verilogStatement    slu_sm_array_var_get_end
syn keyword verilogStatement    slu_sm_array_var_get_endvoid
syn keyword verilogStatement    slu_sm_array_var_set
syn keyword verilogStatement    slu_sm_array_var_set_begin
syn keyword verilogStatement    slu_sm_array_var_set_end
syn keyword verilogStatement    slu_sm_base
syn keyword verilogStatement    slu_sm_byte_t
syn keyword verilogStatement    slu_sm_cm_agent
syn keyword verilogStatement    slu_sm_cm_agent_link
syn keyword verilogStatement    slu_sm_cm_agents
syn keyword verilogStatement    slu_sm_cm_agents_type
syn keyword verilogStatement    slu_sm_cm_chip
syn keyword verilogStatement    slu_sm_cm_chip_major_stepping_t
syn keyword verilogStatement    slu_sm_cm_chip_type
syn keyword verilogStatement    slu_sm_cm_env
syn keyword verilogStatement    slu_sm_cm_topology
syn keyword verilogStatement    slu_sm_cm_topology_type
syn keyword verilogStatement    slu_sm_cm_type
syn keyword verilogStatement    slu_sm_config
syn keyword verilogStatement    slu_sm_config_override
syn keyword verilogStatement    slu_sm_config_override_wrapper#
syn keyword verilogStatement    slu_sm_config_overrides
syn keyword verilogStatement    slu_sm_config_type
syn keyword verilogStatement    slu_sm_constraint
syn keyword verilogStatement    slu_sm_create_env
syn keyword verilogStatement    slu_sm_create_uvm_env
syn keyword verilogStatement    slu_sm_define_OVM_agent_gets_name
syn keyword verilogStatement    slu_sm_define_agent_gets
syn keyword verilogStatement    slu_sm_define_agent_gets_name
syn keyword verilogStatement    slu_sm_define_agent_populate_queue
syn keyword verilogStatement    slu_sm_define_agent_populate_queue_name
syn keyword verilogStatement    slu_sm_define_agent_queue
syn keyword verilogStatement    slu_sm_define_agent_queue_name
syn keyword verilogStatement    slu_sm_defines
syn keyword verilogStatement    slu_sm_disable_constraint
syn keyword verilogStatement    slu_sm_disable_constraint_type
syn keyword verilogStatement    slu_sm_dyamic_array_var_declare
syn keyword verilogStatement    slu_sm_dynamic_array_var
syn keyword verilogStatement    slu_sm_dynamic_array_var_get
syn keyword verilogStatement    slu_sm_dynamic_array_var_get_begin
syn keyword verilogStatement    slu_sm_dynamic_array_var_get_end
syn keyword verilogStatement    slu_sm_dynamic_array_var_set
syn keyword verilogStatement    slu_sm_dynamic_array_var_set_begin
syn keyword verilogStatement    slu_sm_dynamic_array_var_set_end
syn keyword verilogStatement    slu_sm_enum_list
syn keyword verilogStatement    slu_sm_enum_list_new_tag
syn keyword verilogStatement    slu_sm_env
syn keyword verilogStatement    slu_sm_event_callback
syn keyword verilogStatement    slu_sm_field_rand
syn keyword verilogStatement    slu_sm_field_rand_queue
syn keyword verilogStatement    slu_sm_log
syn keyword verilogStatement    slu_sm_macros
syn keyword verilogStatement    slu_sm_pkg
syn keyword verilogStatement    slu_sm_queue_var
syn keyword verilogStatement    slu_sm_queue_var_assert
syn keyword verilogStatement    slu_sm_queue_var_assert_get
syn keyword verilogStatement    slu_sm_queue_var_assert_get_begin
syn keyword verilogStatement    slu_sm_queue_var_assert_set
syn keyword verilogStatement    slu_sm_queue_var_assert_set_begin
syn keyword verilogStatement    slu_sm_queue_var_declare
syn keyword verilogStatement    slu_sm_queue_var_get
syn keyword verilogStatement    slu_sm_queue_var_get_begin
syn keyword verilogStatement    slu_sm_queue_var_get_end
syn keyword verilogStatement    slu_sm_queue_var_set
syn keyword verilogStatement    slu_sm_queue_var_set_begin
syn keyword verilogStatement    slu_sm_queue_var_set_end
syn keyword verilogStatement    slu_sm_rand_helper
syn keyword verilogStatement    slu_sm_read
syn keyword verilogStatement    slu_sm_read_128
syn keyword verilogStatement    slu_sm_read_256
syn keyword verilogStatement    slu_sm_reset_kind_t
syn keyword verilogStatement    slu_sm_sim_mode_t
syn keyword verilogStatement    slu_sm_sm_cm_agent
syn keyword verilogStatement    slu_sm_sm_env
syn keyword verilogStatement    slu_sm_sm_mode_t
syn keyword verilogStatement    slu_sm_test_randomization_build
syn keyword verilogStatement    slu_sm_test_randomization_callback
syn keyword verilogStatement    slu_sm_test_randomization_members
syn keyword verilogStatement    slu_sm_test_randomize_event_callback
syn keyword verilogStatement    slu_sm_test_randomize_post_trigger
syn keyword verilogStatement    slu_sm_test_randomize_pre_trigger
syn keyword verilogStatement    slu_sm_test_randomize_set_contraint_mode
syn keyword verilogStatement    slu_sm_types
syn keyword verilogStatement    slu_sm_utils_csr_access_match
syn keyword verilogStatement    slu_sm_utils_env
syn keyword verilogStatement    slu_sm_utils_type
syn keyword verilogStatement    slu_sm_var
syn keyword verilogStatement    slu_sm_var_declare
syn keyword verilogStatement    slu_sm_var_get
syn keyword verilogStatement    slu_sm_var_get_begin
syn keyword verilogStatement    slu_sm_var_get_end
syn keyword verilogStatement    slu_sm_var_set
syn keyword verilogStatement    slu_sm_var_set_begin
syn keyword verilogStatement    slu_sm_var_set_end
syn keyword verilogStatement    slu_sm_write
syn keyword verilogStatement    slu_sm_write_128
syn keyword verilogStatement    slu_sm_write_256
syn keyword verilogStatement    slu_space_t
syn keyword verilogStatement    slu_sqcr
syn keyword verilogStatement    slu_sqr
syn keyword verilogStatement    slu_sqr_type
syn keyword verilogStatement    slu_start
syn keyword verilogStatement    slu_states
syn keyword verilogStatement    slu_status_t
syn keyword verilogStatement    slu_stf
syn keyword verilogStatement    slu_stf_addr_t
syn keyword verilogStatement    slu_stf_backdoor
syn keyword verilogStatement    slu_stf_cfg_data_t
syn keyword verilogStatement    slu_stf_cmd_seq
syn keyword verilogStatement    slu_stf_cmd_t
syn keyword verilogStatement    slu_stf_data_t
syn keyword verilogStatement    slu_stf_dummy_agt_t
syn keyword verilogStatement    slu_stf_dummy_reg_t
syn keyword verilogStatement    slu_stf_env
syn keyword verilogStatement    slu_stf_field
syn keyword verilogStatement    slu_stf_field_valid
syn keyword verilogStatement    slu_stf_file
syn keyword verilogStatement    slu_stf_reg
syn keyword verilogStatement    slu_stf_reg_file
syn keyword verilogStatement    slu_stf_sequence_base
syn keyword verilogStatement    slu_stf_sequencer
syn keyword verilogStatement    slu_stf_types
syn keyword verilogStatement    slu_string_set
syn keyword verilogStatement    slu_sw_allocate_mem
syn keyword verilogStatement    slu_tap
syn keyword verilogStatement    slu_tap_access_path_t
syn keyword verilogStatement    slu_tap_access_regs_seq
syn keyword verilogStatement    slu_tap_attr_t
syn keyword verilogStatement    slu_tap_backdoor
syn keyword verilogStatement    slu_tap_cmd_mode_t
syn keyword verilogStatement    slu_tap_cmd_seq
syn keyword verilogStatement    slu_tap_cmd_seq#
syn keyword verilogStatement    slu_tap_cmd_sequence
syn keyword verilogStatement    slu_tap_data_t
syn keyword verilogStatement    slu_tap_dummy_cmd_t
syn keyword verilogStatement    slu_tap_dummy_instr_t
syn keyword verilogStatement    slu_tap_dummy_nw_status_t
syn keyword verilogStatement    slu_tap_dummy_port_t
syn keyword verilogStatement    slu_tap_env
syn keyword verilogStatement    slu_tap_field
syn keyword verilogStatement    slu_tap_field_valid
syn keyword verilogStatement    slu_tap_file
syn keyword verilogStatement    slu_tap_get
syn keyword verilogStatement    slu_tap_hdl_path_t
syn keyword verilogStatement    slu_tap_max_data_t
syn keyword verilogStatement    slu_tap_mbp_data_t
syn keyword verilogStatement    slu_tap_mci_data_t
syn keyword verilogStatement    slu_tap_opcode_t
syn keyword verilogStatement    slu_tap_operation_t
syn keyword verilogStatement    slu_tap_print_data_t
syn keyword verilogStatement    slu_tap_read
syn keyword verilogStatement    slu_tap_read_access
syn keyword verilogStatement    slu_tap_read_idcode_seq
syn keyword verilogStatement    slu_tap_read_regs_reset_seq
syn keyword verilogStatement    slu_tap_reg
syn keyword verilogStatement    slu_tap_reg_file
syn keyword verilogStatement    slu_tap_sequence_base
syn keyword verilogStatement    slu_tap_sequencer
syn keyword verilogStatement    slu_tap_space_t
syn keyword verilogStatement    slu_tap_ss_mode_t
syn keyword verilogStatement    slu_tap_stf_data_t
syn keyword verilogStatement    slu_tap_tp_raw_data_t
syn keyword verilogStatement    slu_tap_types
syn keyword verilogStatement    slu_tap_write_access
syn keyword verilogStatement    slu_tb_env
syn keyword verilogStatement    slu_tb_env_by_config
syn keyword verilogStatement    slu_tb_env_config
syn keyword verilogStatement    slu_tb_env_config_params
syn keyword verilogStatement    slu_tb_env_configs
syn keyword verilogStatement    slu_tb_envs
syn keyword verilogStatement    slu_test_exception_t
syn keyword verilogStatement    slu_try_allocate
syn keyword verilogStatement    slu_try_allocate_at_addr
syn keyword verilogStatement    slu_try_allocate_hier
syn keyword verilogStatement    slu_types
syn keyword verilogStatement    slu_unregister_component
syn keyword verilogStatement    slu_untimed_tb_env
syn keyword verilogStatement    slu_utils
syn keyword verilogStatement    slu_val_env_t
syn keyword verilogStatement    slu_vf_cont_desc
syn keyword verilogStatement    slu_vf_share_t
syn keyword verilogStatement    slu_vif_container
syn keyword verilogStatement    slu_vpi
syn keyword verilogStatement    slu_vpi_force_tap_value
syn keyword verilogStatement    slu_vpi_force_tap_value_by_name
syn keyword verilogStatement    slu_vpi_force_value
syn keyword verilogStatement    slu_vpi_force_value_by_name
syn keyword verilogStatement    slu_vpi_force_value_tap_by_name
syn keyword verilogStatement    slu_vpi_get_tap_value
syn keyword verilogStatement    slu_vpi_get_tap_value_by_name
syn keyword verilogStatement    slu_vpi_get_value
syn keyword verilogStatement    slu_vpi_get_value_by_name
syn keyword verilogStatement    slu_vpi_handle_by_name
syn keyword verilogStatement    slu_vpi_put_tap_value
syn keyword verilogStatement    slu_vpi_put_tap_value_by_name
syn keyword verilogStatement    slu_vpi_put_value
syn keyword verilogStatement    slu_vpi_put_value_by_name
syn keyword verilogStatement    slu_vpi_record
syn keyword verilogStatement    slu_vpi_register_cb
syn keyword verilogStatement    slu_vpi_release_value
syn keyword verilogStatement    slu_vpi_release_value_by_name
syn keyword verilogStatement    slu_vpi_update_ral
syn keyword verilogStatement    slu_vpi_without_ral
syn keyword verilogStatement    slu_wait_on
syn keyword verilogStatement    slu_wait_on_64
syn keyword verilogStatement    slu_wait_on_active_isrs
syn keyword verilogStatement    slu_wait_on_cfg_obj
syn keyword verilogStatement    slu_wait_on_isr
syn keyword verilogStatement    slu_wait_on_isr_list
syn keyword verilogStatement    slu_wait_on_phase
syn keyword verilogStatement    slu_wait_on_phase_status_change
syn keyword verilogStatement    slu_wait_on_state
syn keyword verilogStatement    slu_waning
syn keyword verilogStatement    slu_warning
syn keyword verilogStatement    slu_xvm_component_list
syn keyword verilogStatement    slu_xvm_im_handler
syn keyword verilogStatement    slu_xvm_object
syn keyword verilogStatement    slu_xvm_parent_object
syn keyword verilogStatement    slu_xvm_seqr
syn keyword verilogStatement    slu_xvm_sequencer
syn keyword verilogStatement    slu_xvm_sm_define_OVM_agent_gets
syn keyword verilogStatement    slu_xvm_sqcr
syn keyword verilogStatement    slu_xvm_sqr
syn keyword verilogStatement    slu_xvm_type
syn keyword verilogStatement    slu_xvm_wrapper

syn keyword verilogStatement    sla_add_db
syn keyword verilogStatement    sla_add_db_and_cfg
syn keyword verilogStatement    sla_add_test_phase
syn keyword verilogStatement    sla_add_to_seq_lib
syn keyword verilogStatement    sla_add_to_sequence_library
syn keyword verilogStatement    sla_agent_config_object
syn keyword verilogStatement    sla_agent_name_q_t
syn keyword verilogStatement    sla_agent_name_t
syn keyword verilogStatement    sla_agent_type_t
syn keyword verilogStatement    sla_allocate
syn keyword verilogStatement    sla_allocate_at_addr
syn keyword verilogStatement    sla_allocate_hier
syn keyword verilogStatement    sla_allocator_c
syn keyword verilogStatement    sla_array_container
syn keyword verilogStatement    sla_assert
syn keyword verilogStatement    sla_bag_c
syn keyword verilogStatement    sla_cfg_mgr_env
syn keyword verilogStatement    sla_common_macros
syn keyword verilogStatement    sla_config_event
syn keyword verilogStatement    sla_config_event_pool
syn keyword verilogStatement    sla_config_log_t
syn keyword verilogStatement    sla_config_manager_env
syn keyword verilogStatement    sla_config_obj
syn keyword verilogStatement    sla_config_object
syn keyword verilogStatement    sla_config_object_base
syn keyword verilogStatement    sla_config_objects
syn keyword verilogStatement    sla_config_queue
syn keyword verilogStatement    sla_container
syn keyword verilogStatement    sla_converter
syn keyword verilogStatement    sla_converter_macros
syn keyword verilogStatement    sla_create_converter_sequencer
syn keyword verilogStatement    sla_data_phase_mode_t
syn keyword verilogStatement    sla_deallocate
syn keyword verilogStatement    sla_deallocate_by_name
syn keyword verilogStatement    sla_deallocate_hier
syn keyword verilogStatement    sla_declare_basic_seq
syn keyword verilogStatement    sla_defines
syn keyword verilogStatement    sla_delay
syn keyword verilogStatement    sla_delay_kind_t
syn keyword verilogStatement    sla_do_mode_with
syn keyword verilogStatement    sla_do_on_mode_with
syn keyword verilogStatement    sla_do_on_pre_with
syn keyword verilogStatement    sla_do_pre_with
syn keyword verilogStatement    sla_dpi
syn keyword verilogStatement    sla_dpi_shift_left
syn keyword verilogStatement    sla_dpi_vector
syn keyword verilogStatement    sla_dpi_vector_bit
syn keyword verilogStatement    sla_dpi_vector_bool
syn keyword verilogStatement    sla_dpi_vector_byte
syn keyword verilogStatement    sla_dpi_vector_string
syn keyword verilogStatement    sla_dut_error
syn keyword verilogStatement    sla_emit_state
syn keyword verilogStatement    sla_empty_seq_for
syn keyword verilogStatement    sla_enum_utils
syn keyword verilogStatement    sla_env
syn keyword verilogStatement    sla_env_name
syn keyword verilogStatement    sla_envs
syn keyword verilogStatement    sla_error
syn keyword verilogStatement    sla_external_rtl_tlm_impl_macros
syn keyword verilogStatement    sla_fal_burn_all_fuses
syn keyword verilogStatement    sla_fal_burn_softstraps
syn keyword verilogStatement    sla_fal_mirror_desired
syn keyword verilogStatement    sla_fal_randomize
syn keyword verilogStatement    sla_fal_read_all_fuses
syn keyword verilogStatement    sla_fal_read_all_soft_straps
syn keyword verilogStatement    sla_fal_resense
syn keyword verilogStatement    sla_fal_reset_fuse_ram
syn keyword verilogStatement    sla_fal_reset_fuse_rom
syn keyword verilogStatement    sla_fal_set_default_constraint
syn keyword verilogStatement    sla_fal_set_lldd_default_constraint
syn keyword verilogStatement    sla_fal_set_shared_constraint
syn keyword verilogStatement    sla_fatal
syn keyword verilogStatement    sla_find_region_by_addr
syn keyword verilogStatement    sla_flow_c
syn keyword verilogStatement    sla_fork_sequence
syn keyword verilogStatement    sla_fuse
syn keyword verilogStatement    sla_fuse_access_t
syn keyword verilogStatement    sla_fuse_cont_desc
syn keyword verilogStatement    sla_fuse_encoding_value
syn keyword verilogStatement    sla_fuse_env
syn keyword verilogStatement    sla_fuse_feature
syn keyword verilogStatement    sla_fuse_feature_custom_value
syn keyword verilogStatement    sla_fuse_feature_value
syn keyword verilogStatement    sla_fuse_group
syn keyword verilogStatement    sla_fuse_header_pull_t
syn keyword verilogStatement    sla_fuse_id_share_t
syn keyword verilogStatement    sla_fuse_pull_data
syn keyword verilogStatement    sla_fuse_puller_opcode_t
syn keyword verilogStatement    sla_fuse_read
syn keyword verilogStatement    sla_fuse_read_128
syn keyword verilogStatement    sla_fuse_top
syn keyword verilogStatement    sla_fuse_top_feature
syn keyword verilogStatement    sla_fuse_topfeat_value
syn keyword verilogStatement    sla_fuse_types
syn keyword verilogStatement    sla_fuse_virtual_data
syn keyword verilogStatement    sla_fuse_write
syn keyword verilogStatement    sla_fuse_write_128
syn keyword verilogStatement    sla_generic_seq_read_access
syn keyword verilogStatement    sla_generic_seq_reset_access
syn keyword verilogStatement    sla_generic_seq_write_access
syn keyword verilogStatement    sla_get_db
syn keyword verilogStatement    sla_get_fuse
syn keyword verilogStatement    sla_get_parent_seq
syn keyword verilogStatement    sla_get_phase_status
syn keyword verilogStatement    sla_get_primary_access
syn keyword verilogStatement    sla_get_region_name_by_addr
syn keyword verilogStatement    sla_get_sideband_access
syn keyword verilogStatement    sla_get_sm_region_addr
syn keyword verilogStatement    sla_get_time
syn keyword verilogStatement    sla_get_top_tb_env
syn keyword verilogStatement    sla_ibag
syn keyword verilogStatement    sla_ibag_c
syn keyword verilogStatement    sla_im
syn keyword verilogStatement    sla_im_add_intr_info
syn keyword verilogStatement    sla_im_env
syn keyword verilogStatement    sla_im_handler
syn keyword verilogStatement    sla_im_interrupt
syn keyword verilogStatement    sla_im_intr_info
syn keyword verilogStatement    sla_im_intr_name_t
syn keyword verilogStatement    sla_im_intr_trigger_t
syn keyword verilogStatement    sla_im_isr_object
syn keyword verilogStatement    sla_im_sequencer
syn keyword verilogStatement    sla_im_types
syn keyword verilogStatement    sla_im_wait_on_active_isrs
syn keyword verilogStatement    sla_im_wait_on_isr
syn keyword verilogStatement    sla_im_wait_on_isr_list
syn keyword verilogStatement    sla_info
syn keyword verilogStatement    sla_injector_agent%0d
syn keyword verilogStatement    sla_injector_agent0
syn keyword verilogStatement    sla_injector_size
syn keyword verilogStatement    sla_injector_sqcr
syn keyword verilogStatement    sla_integrity
syn keyword verilogStatement    sla_interrupt
syn keyword verilogStatement    sla_jump_test_phase
syn keyword verilogStatement    sla_len_kind_t
syn keyword verilogStatement    sla_level_t
syn keyword verilogStatement    sla_macros
syn keyword verilogStatement    sla_mem_read
syn keyword verilogStatement    sla_mem_read_128
syn keyword verilogStatement    sla_mem_read_256
syn keyword verilogStatement    sla_mem_read_bits
syn keyword verilogStatement    sla_mem_write
syn keyword verilogStatement    sla_mem_write_128
syn keyword verilogStatement    sla_mem_write_256
syn keyword verilogStatement    sla_message_macros
syn keyword verilogStatement    sla_msg
syn keyword verilogStatement    sla_msgt
syn keyword verilogStatement    sla_num_c
syn keyword verilogStatement    sla_object_bundle
syn keyword verilogStatement    sla_object_container
syn keyword verilogStatement    sla_ovm_macros
syn keyword verilogStatement    sla_pair_c
syn keyword verilogStatement    sla_phase_name_q_t
syn keyword verilogStatement    sla_phase_name_t
syn keyword verilogStatement    sla_phase_status_t
syn keyword verilogStatement    sla_pick_rand_addr
syn keyword verilogStatement    sla_pkg
syn keyword verilogStatement    sla_poll_signame
syn keyword verilogStatement    sla_print_ral_regs_info
syn keyword verilogStatement    sla_ral
syn keyword verilogStatement    sla_ral_access_path_t
syn keyword verilogStatement    sla_ral_access_sequence
syn keyword verilogStatement    sla_ral_addr_t
syn keyword verilogStatement    sla_ral_attr_base_test_seq
syn keyword verilogStatement    sla_ral_attr_t
syn keyword verilogStatement    sla_ral_backdoor
syn keyword verilogStatement    sla_ral_backdoor_t
syn keyword verilogStatement    sla_ral_bdf_t
syn keyword verilogStatement    sla_ral_be_t
syn keyword verilogStatement    sla_ral_cfg_data_t
syn keyword verilogStatement    sla_ral_chop_enum_t
syn keyword verilogStatement    sla_ral_chop_t
syn keyword verilogStatement    sla_ral_config_access_method
syn keyword verilogStatement    sla_ral_config_seq
syn keyword verilogStatement    sla_ral_coverage_t
syn keyword verilogStatement    sla_ral_data_t
syn keyword verilogStatement    sla_ral_defines
syn keyword verilogStatement    sla_ral_env
syn keyword verilogStatement    sla_ral_fid_t
syn keyword verilogStatement    sla_ral_field
syn keyword verilogStatement    sla_ral_field_get
syn keyword verilogStatement    sla_ral_field_get_val
syn keyword verilogStatement    sla_ral_field_set
syn keyword verilogStatement    sla_ral_field_valid
syn keyword verilogStatement    sla_ral_file
syn keyword verilogStatement    sla_ral_find_regname_by_offset
syn keyword verilogStatement    sla_ral_get
syn keyword verilogStatement    sla_ral_get_base_addr_val
syn keyword verilogStatement    sla_ral_get_bdf
syn keyword verilogStatement    sla_ral_get_bit
syn keyword verilogStatement    sla_ral_get_cfg_val
syn keyword verilogStatement    sla_ral_get_extended_id
syn keyword verilogStatement    sla_ral_get_file
syn keyword verilogStatement    sla_ral_get_msg_opcode
syn keyword verilogStatement    sla_ral_get_offset
syn keyword verilogStatement    sla_ral_get_portid
syn keyword verilogStatement    sla_ral_get_regname
syn keyword verilogStatement    sla_ral_get_sb_bar
syn keyword verilogStatement    sla_ral_get_sb_fid
syn keyword verilogStatement    sla_ral_get_user_attribute
syn keyword verilogStatement    sla_ral_macros
syn keyword verilogStatement    sla_ral_monitor
syn keyword verilogStatement    sla_ral_operation_t
syn keyword verilogStatement    sla_ral_pick_msg_opcode
syn keyword verilogStatement    sla_ral_query_t
syn keyword verilogStatement    sla_ral_randomize
syn keyword verilogStatement    sla_ral_read
syn keyword verilogStatement    sla_ral_read_and_check
syn keyword verilogStatement    sla_ral_read_and_check_field
syn keyword verilogStatement    sla_ral_read_and_check_fuses
syn keyword verilogStatement    sla_ral_read_bits
syn keyword verilogStatement    sla_ral_read_by_addr
syn keyword verilogStatement    sla_ral_read_field
syn keyword verilogStatement    sla_ral_read_lo_hi
syn keyword verilogStatement    sla_ral_readx
syn keyword verilogStatement    sla_ral_reg
syn keyword verilogStatement    sla_ral_reg_file
syn keyword verilogStatement    sla_ral_reg_trk
syn keyword verilogStatement    sla_ral_registry_macro
syn keyword verilogStatement    sla_ral_reset
syn keyword verilogStatement    sla_ral_reset_by_signame
syn keyword verilogStatement    sla_ral_reset_regs
syn keyword verilogStatement    sla_ral_reset_t
syn keyword verilogStatement    sla_ral_restore_order_s
syn keyword verilogStatement    sla_ral_rmw
syn keyword verilogStatement    sla_ral_rmw_bit
syn keyword verilogStatement    sla_ral_rmw_bits
syn keyword verilogStatement    sla_ral_root_space_t
syn keyword verilogStatement    sla_ral_rw_t
syn keyword verilogStatement    sla_ral_sai_t
syn keyword verilogStatement    sla_ral_sample_t
syn keyword verilogStatement    sla_ral_sequence_base
syn keyword verilogStatement    sla_ral_sequencer
syn keyword verilogStatement    sla_ral_set
syn keyword verilogStatement    sla_ral_space_t
syn keyword verilogStatement    sla_ral_test_ro_sequence
syn keyword verilogStatement    sla_ral_test_rw_sequence
syn keyword verilogStatement    sla_ral_test_sequence
syn keyword verilogStatement    sla_ral_transaction
syn keyword verilogStatement    sla_ral_types
syn keyword verilogStatement    sla_ral_write
syn keyword verilogStatement    sla_ral_write_by_addr
syn keyword verilogStatement    sla_ral_write_field
syn keyword verilogStatement    sla_ral_write_lo_hi
syn keyword verilogStatement    sla_reg
syn keyword verilogStatement    sla_region_name_q_t
syn keyword verilogStatement    sla_region_name_t
syn keyword verilogStatement    sla_register_component
syn keyword verilogStatement    sla_register_component_by_inst
syn keyword verilogStatement    sla_remove_all_allocations
syn keyword verilogStatement    sla_reset_domain_config
syn keyword verilogStatement    sla_reset_domain_lib
syn keyword verilogStatement    sla_resource
syn keyword verilogStatement    sla_resource_container
syn keyword verilogStatement    sla_resource_container_base
syn keyword verilogStatement    sla_resource_db
syn keyword verilogStatement    sla_resource_id_t
syn keyword verilogStatement    sla_resource_manager
syn keyword verilogStatement    sla_resource_mgr_c
syn keyword verilogStatement    sla_resourcedb_macros
syn keyword verilogStatement    sla_rla_file
syn keyword verilogStatement    sla_rm
syn keyword verilogStatement    sla_rm_env
syn keyword verilogStatement    sla_rtl_analysis_port_monitor
syn keyword verilogStatement    sla_rtl_analysis_port_monitor#
syn keyword verilogStatement    sla_rtl_tlm_macros
syn keyword verilogStatement    sla_run_sequence
syn keyword verilogStatement    sla_scan_dummy_chain_t
syn keyword verilogStatement    sla_scan_dummy_instr_t
syn keyword verilogStatement    sla_scan_env
syn keyword verilogStatement    sla_scan_op_t
syn keyword verilogStatement    sla_seq
syn keyword verilogStatement    sla_seq_create
syn keyword verilogStatement    sla_seq_kind
syn keyword verilogStatement    sla_seq_kind_t
syn keyword verilogStatement    sla_seq_type
syn keyword verilogStatement    sla_seq_type_list
syn keyword verilogStatement    sla_seqlib_state_t
syn keyword verilogStatement    sla_sequence
syn keyword verilogStatement    sla_sequence_base
syn keyword verilogStatement    sla_sequence_library
syn keyword verilogStatement    sla_sequence_library_cfg
syn keyword verilogStatement    sla_sequence_library_utils
syn keyword verilogStatement    sla_sequence_macros
syn keyword verilogStatement    sla_sequence_t
syn keyword verilogStatement    sla_sequence_type_utils
syn keyword verilogStatement    sla_sequencer
syn keyword verilogStatement    sla_sequencer_uvm
syn keyword verilogStatement    sla_sequences
syn keyword verilogStatement    sla_set_cfg_map
syn keyword verilogStatement    sla_set_cfg_mapname
syn keyword verilogStatement    sla_set_dpi_scope
syn keyword verilogStatement    sla_set_io_map
syn keyword verilogStatement    sla_set_io_mapname
syn keyword verilogStatement    sla_set_mem_map
syn keyword verilogStatement    sla_set_mem_mapname
syn keyword verilogStatement    sla_set_mem_region
syn keyword verilogStatement    sla_set_mem_regionname
syn keyword verilogStatement    sla_set_next_test_phase
syn keyword verilogStatement    sla_set_pri_access
syn keyword verilogStatement    sla_set_primary_access
syn keyword verilogStatement    sla_set_sb_access
syn keyword verilogStatement    sla_set_scope
syn keyword verilogStatement    sla_set_sideband_access
syn keyword verilogStatement    sla_set_test_phase_type
syn keyword verilogStatement    sla_set_verbosity
syn keyword verilogStatement    sla_set_verbosity_level
syn keyword verilogStatement    sla_sig_force
syn keyword verilogStatement    sla_sig_polling
syn keyword verilogStatement    sla_sig_release
syn keyword verilogStatement    sla_sm
syn keyword verilogStatement    sla_sm_addr_t
syn keyword verilogStatement    sla_sm_ag_env
syn keyword verilogStatement    sla_sm_ag_param_t
syn keyword verilogStatement    sla_sm_ag_query
syn keyword verilogStatement    sla_sm_ag_result
syn keyword verilogStatement    sla_sm_ag_status
syn keyword verilogStatement    sla_sm_ag_status_str
syn keyword verilogStatement    sla_sm_ag_status_t
syn keyword verilogStatement    sla_sm_ag_status_t-to-string
syn keyword verilogStatement    sla_sm_ag_tag
syn keyword verilogStatement    sla_sm_ag_type
syn keyword verilogStatement    sla_sm_ag_type=
syn keyword verilogStatement    sla_sm_agent_mode_t
syn keyword verilogStatement    sla_sm_am
syn keyword verilogStatement    sla_sm_am_agentcfgmap
syn keyword verilogStatement    sla_sm_am_agentcfgmap_type
syn keyword verilogStatement    sla_sm_am_agentinfo
syn keyword verilogStatement    sla_sm_am_agentiomap
syn keyword verilogStatement    sla_sm_am_agentiomap_type
syn keyword verilogStatement    sla_sm_am_agentmemmap
syn keyword verilogStatement    sla_sm_am_agentmemmap_type
syn keyword verilogStatement    sla_sm_am_agentroute
syn keyword verilogStatement    sla_sm_am_allocatedmap
syn keyword verilogStatement    sla_sm_am_cfgmap
syn keyword verilogStatement    sla_sm_am_cfgmap_type
syn keyword verilogStatement    sla_sm_am_env
syn keyword verilogStatement    sla_sm_am_iomap
syn keyword verilogStatement    sla_sm_am_iomap_type
syn keyword verilogStatement    sla_sm_am_memmap
syn keyword verilogStatement    sla_sm_am_memmap_type
syn keyword verilogStatement    sla_sm_am_new_agentinfo
syn keyword verilogStatement    sla_sm_am_new_agentinfo_by_name
syn keyword verilogStatement    sla_sm_am_new_agentroute
syn keyword verilogStatement    sla_sm_am_new_tag
syn keyword verilogStatement    sla_sm_am_new_tagrule
syn keyword verilogStatement    sla_sm_am_tag
syn keyword verilogStatement    sla_sm_am_tagmap
syn keyword verilogStatement    sla_sm_am_tagrule
syn keyword verilogStatement    sla_sm_am_type
syn keyword verilogStatement    sla_sm_am_type=
syn keyword verilogStatement    sla_sm_apply_inst_override
syn keyword verilogStatement    sla_sm_apply_override
syn keyword verilogStatement    sla_sm_array_var
syn keyword verilogStatement    sla_sm_array_var_assert
syn keyword verilogStatement    sla_sm_array_var_assert_get
syn keyword verilogStatement    sla_sm_array_var_assert_get_begin
syn keyword verilogStatement    sla_sm_array_var_assert_set
syn keyword verilogStatement    sla_sm_array_var_assert_set_begin
syn keyword verilogStatement    sla_sm_array_var_declare
syn keyword verilogStatement    sla_sm_array_var_get
syn keyword verilogStatement    sla_sm_array_var_get_begin
syn keyword verilogStatement    sla_sm_array_var_get_end
syn keyword verilogStatement    sla_sm_array_var_get_endvoid
syn keyword verilogStatement    sla_sm_array_var_set
syn keyword verilogStatement    sla_sm_array_var_set_begin
syn keyword verilogStatement    sla_sm_array_var_set_end
syn keyword verilogStatement    sla_sm_base
syn keyword verilogStatement    sla_sm_byte_t
syn keyword verilogStatement    sla_sm_cm_agent
syn keyword verilogStatement    sla_sm_cm_agent_link
syn keyword verilogStatement    sla_sm_cm_agents
syn keyword verilogStatement    sla_sm_cm_agents_type
syn keyword verilogStatement    sla_sm_cm_chip
syn keyword verilogStatement    sla_sm_cm_chip_major_stepping_t
syn keyword verilogStatement    sla_sm_cm_chip_type
syn keyword verilogStatement    sla_sm_cm_env
syn keyword verilogStatement    sla_sm_cm_topology
syn keyword verilogStatement    sla_sm_cm_topology_type
syn keyword verilogStatement    sla_sm_cm_type
syn keyword verilogStatement    sla_sm_config
syn keyword verilogStatement    sla_sm_config_override
syn keyword verilogStatement    sla_sm_config_override_wrapper#
syn keyword verilogStatement    sla_sm_config_overrides
syn keyword verilogStatement    sla_sm_config_type
syn keyword verilogStatement    sla_sm_constraint
syn keyword verilogStatement    sla_sm_create_env
syn keyword verilogStatement    sla_sm_create_uvm_env
syn keyword verilogStatement    sla_sm_define_OVM_agent_gets_name
syn keyword verilogStatement    sla_sm_define_agent_gets
syn keyword verilogStatement    sla_sm_define_agent_gets_name
syn keyword verilogStatement    sla_sm_define_agent_populate_queue
syn keyword verilogStatement    sla_sm_define_agent_populate_queue_name
syn keyword verilogStatement    sla_sm_define_agent_queue
syn keyword verilogStatement    sla_sm_define_agent_queue_name
syn keyword verilogStatement    sla_sm_defines
syn keyword verilogStatement    sla_sm_disable_constraint
syn keyword verilogStatement    sla_sm_disable_constraint_type
syn keyword verilogStatement    sla_sm_dyamic_array_var_declare
syn keyword verilogStatement    sla_sm_dynamic_array_var
syn keyword verilogStatement    sla_sm_dynamic_array_var_get
syn keyword verilogStatement    sla_sm_dynamic_array_var_get_begin
syn keyword verilogStatement    sla_sm_dynamic_array_var_get_end
syn keyword verilogStatement    sla_sm_dynamic_array_var_set
syn keyword verilogStatement    sla_sm_dynamic_array_var_set_begin
syn keyword verilogStatement    sla_sm_dynamic_array_var_set_end
syn keyword verilogStatement    sla_sm_enum_list
syn keyword verilogStatement    sla_sm_enum_list_new_tag
syn keyword verilogStatement    sla_sm_env
syn keyword verilogStatement    sla_sm_event_callback
syn keyword verilogStatement    sla_sm_field_rand
syn keyword verilogStatement    sla_sm_field_rand_queue
syn keyword verilogStatement    sla_sm_log
syn keyword verilogStatement    sla_sm_macros
syn keyword verilogStatement    sla_sm_pkg
syn keyword verilogStatement    sla_sm_queue_var
syn keyword verilogStatement    sla_sm_queue_var_assert
syn keyword verilogStatement    sla_sm_queue_var_assert_get
syn keyword verilogStatement    sla_sm_queue_var_assert_get_begin
syn keyword verilogStatement    sla_sm_queue_var_assert_set
syn keyword verilogStatement    sla_sm_queue_var_assert_set_begin
syn keyword verilogStatement    sla_sm_queue_var_declare
syn keyword verilogStatement    sla_sm_queue_var_get
syn keyword verilogStatement    sla_sm_queue_var_get_begin
syn keyword verilogStatement    sla_sm_queue_var_get_end
syn keyword verilogStatement    sla_sm_queue_var_set
syn keyword verilogStatement    sla_sm_queue_var_set_begin
syn keyword verilogStatement    sla_sm_queue_var_set_end
syn keyword verilogStatement    sla_sm_rand_helper
syn keyword verilogStatement    sla_sm_read
syn keyword verilogStatement    sla_sm_read_128
syn keyword verilogStatement    sla_sm_read_256
syn keyword verilogStatement    sla_sm_reset_kind_t
syn keyword verilogStatement    sla_sm_sim_mode_t
syn keyword verilogStatement    sla_sm_sm_cm_agent
syn keyword verilogStatement    sla_sm_sm_env
syn keyword verilogStatement    sla_sm_sm_mode_t
syn keyword verilogStatement    sla_sm_test_randomization_build
syn keyword verilogStatement    sla_sm_test_randomization_callback
syn keyword verilogStatement    sla_sm_test_randomization_members
syn keyword verilogStatement    sla_sm_test_randomize_event_callback
syn keyword verilogStatement    sla_sm_test_randomize_post_trigger
syn keyword verilogStatement    sla_sm_test_randomize_pre_trigger
syn keyword verilogStatement    sla_sm_test_randomize_set_contraint_mode
syn keyword verilogStatement    sla_sm_types
syn keyword verilogStatement    sla_sm_utils_csr_access_match
syn keyword verilogStatement    sla_sm_utils_env
syn keyword verilogStatement    sla_sm_utils_type
syn keyword verilogStatement    sla_sm_var
syn keyword verilogStatement    sla_sm_var_declare
syn keyword verilogStatement    sla_sm_var_get
syn keyword verilogStatement    sla_sm_var_get_begin
syn keyword verilogStatement    sla_sm_var_get_end
syn keyword verilogStatement    sla_sm_var_set
syn keyword verilogStatement    sla_sm_var_set_begin
syn keyword verilogStatement    sla_sm_var_set_end
syn keyword verilogStatement    sla_sm_write
syn keyword verilogStatement    sla_sm_write_128
syn keyword verilogStatement    sla_sm_write_256
syn keyword verilogStatement    sla_space_t
syn keyword verilogStatement    sla_sqcr
syn keyword verilogStatement    sla_sqr
syn keyword verilogStatement    sla_sqr_type
syn keyword verilogStatement    sla_start
syn keyword verilogStatement    sla_states
syn keyword verilogStatement    sla_status_t
syn keyword verilogStatement    sla_stf
syn keyword verilogStatement    sla_stf_addr_t
syn keyword verilogStatement    sla_stf_backdoor
syn keyword verilogStatement    sla_stf_cfg_data_t
syn keyword verilogStatement    sla_stf_cmd_seq
syn keyword verilogStatement    sla_stf_cmd_t
syn keyword verilogStatement    sla_stf_data_t
syn keyword verilogStatement    sla_stf_dummy_agt_t
syn keyword verilogStatement    sla_stf_dummy_reg_t
syn keyword verilogStatement    sla_stf_env
syn keyword verilogStatement    sla_stf_field
syn keyword verilogStatement    sla_stf_field_valid
syn keyword verilogStatement    sla_stf_file
syn keyword verilogStatement    sla_stf_reg
syn keyword verilogStatement    sla_stf_reg_file
syn keyword verilogStatement    sla_stf_sequence_base
syn keyword verilogStatement    sla_stf_sequencer
syn keyword verilogStatement    sla_stf_types
syn keyword verilogStatement    sla_string_set
syn keyword verilogStatement    sla_sw_allocate_mem
syn keyword verilogStatement    sla_tap
syn keyword verilogStatement    sla_tap_access_path_t
syn keyword verilogStatement    sla_tap_access_regs_seq
syn keyword verilogStatement    sla_tap_attr_t
syn keyword verilogStatement    sla_tap_backdoor
syn keyword verilogStatement    sla_tap_cmd_mode_t
syn keyword verilogStatement    sla_tap_cmd_seq
syn keyword verilogStatement    sla_tap_cmd_seq#
syn keyword verilogStatement    sla_tap_cmd_sequence
syn keyword verilogStatement    sla_tap_data_t
syn keyword verilogStatement    sla_tap_dummy_cmd_t
syn keyword verilogStatement    sla_tap_dummy_instr_t
syn keyword verilogStatement    sla_tap_dummy_nw_status_t
syn keyword verilogStatement    sla_tap_dummy_port_t
syn keyword verilogStatement    sla_tap_env
syn keyword verilogStatement    sla_tap_field
syn keyword verilogStatement    sla_tap_field_valid
syn keyword verilogStatement    sla_tap_file
syn keyword verilogStatement    sla_tap_get
syn keyword verilogStatement    sla_tap_hdl_path_t
syn keyword verilogStatement    sla_tap_max_data_t
syn keyword verilogStatement    sla_tap_mbp_data_t
syn keyword verilogStatement    sla_tap_mci_data_t
syn keyword verilogStatement    sla_tap_opcode_t
syn keyword verilogStatement    sla_tap_operation_t
syn keyword verilogStatement    sla_tap_print_data_t
syn keyword verilogStatement    sla_tap_read
syn keyword verilogStatement    sla_tap_read_access
syn keyword verilogStatement    sla_tap_read_idcode_seq
syn keyword verilogStatement    sla_tap_read_regs_reset_seq
syn keyword verilogStatement    sla_tap_reg
syn keyword verilogStatement    sla_tap_reg_file
syn keyword verilogStatement    sla_tap_sequence_base
syn keyword verilogStatement    sla_tap_sequencer
syn keyword verilogStatement    sla_tap_space_t
syn keyword verilogStatement    sla_tap_ss_mode_t
syn keyword verilogStatement    sla_tap_stf_data_t
syn keyword verilogStatement    sla_tap_tp_raw_data_t
syn keyword verilogStatement    sla_tap_types
syn keyword verilogStatement    sla_tap_write_access
syn keyword verilogStatement    sla_tb_env
syn keyword verilogStatement    sla_tb_env_by_config
syn keyword verilogStatement    sla_tb_env_config
syn keyword verilogStatement    sla_tb_env_config_params
syn keyword verilogStatement    sla_tb_env_configs
syn keyword verilogStatement    sla_tb_envs
syn keyword verilogStatement    sla_test_exception_t
syn keyword verilogStatement    sla_try_allocate
syn keyword verilogStatement    sla_try_allocate_at_addr
syn keyword verilogStatement    sla_try_allocate_hier
syn keyword verilogStatement    sla_types
syn keyword verilogStatement    sla_unregister_component
syn keyword verilogStatement    sla_untimed_tb_env
syn keyword verilogStatement    sla_utils
syn keyword verilogStatement    sla_val_env_t
syn keyword verilogStatement    sla_vf_cont_desc
syn keyword verilogStatement    sla_vf_share_t
syn keyword verilogStatement    sla_vif_container
syn keyword verilogStatement    sla_vpi
syn keyword verilogStatement    sla_vpi_force_tap_value
syn keyword verilogStatement    sla_vpi_force_tap_value_by_name
syn keyword verilogStatement    sla_vpi_force_value
syn keyword verilogStatement    sla_vpi_force_value_by_name
syn keyword verilogStatement    sla_vpi_force_value_tap_by_name
syn keyword verilogStatement    sla_vpi_get_tap_value
syn keyword verilogStatement    sla_vpi_get_tap_value_by_name
syn keyword verilogStatement    sla_vpi_get_value
syn keyword verilogStatement    sla_vpi_get_value_by_name
syn keyword verilogStatement    sla_vpi_handle_by_name
syn keyword verilogStatement    sla_vpi_put_tap_value
syn keyword verilogStatement    sla_vpi_put_tap_value_by_name
syn keyword verilogStatement    sla_vpi_put_value
syn keyword verilogStatement    sla_vpi_put_value_by_name
syn keyword verilogStatement    sla_vpi_record
syn keyword verilogStatement    sla_vpi_register_cb
syn keyword verilogStatement    sla_vpi_release_value
syn keyword verilogStatement    sla_vpi_release_value_by_name
syn keyword verilogStatement    sla_vpi_update_ral
syn keyword verilogStatement    sla_vpi_without_ral
syn keyword verilogStatement    sla_wait_on
syn keyword verilogStatement    sla_wait_on_64
syn keyword verilogStatement    sla_wait_on_active_isrs
syn keyword verilogStatement    sla_wait_on_cfg_obj
syn keyword verilogStatement    sla_wait_on_isr
syn keyword verilogStatement    sla_wait_on_isr_list
syn keyword verilogStatement    sla_wait_on_phase
syn keyword verilogStatement    sla_wait_on_phase_status_change
syn keyword verilogStatement    sla_wait_on_state
syn keyword verilogStatement    sla_waning
syn keyword verilogStatement    sla_warning
syn keyword verilogStatement    sla_xvm_component_list
syn keyword verilogStatement    sla_xvm_im_handler
syn keyword verilogStatement    sla_xvm_object
syn keyword verilogStatement    sla_xvm_parent_object
syn keyword verilogStatement    sla_xvm_seqr
syn keyword verilogStatement    sla_xvm_sequencer
syn keyword verilogStatement    sla_xvm_sm_define_OVM_agent_gets
syn keyword verilogStatement    sla_xvm_sqcr
syn keyword verilogStatement    sla_xvm_sqr
syn keyword verilogStatement    sla_xvm_type
syn keyword verilogStatement    sla_xvm_wrapper

syn match   verilogGlobal      "`begin_\w\+"
syn match   verilogGlobal      "`end_\w\+"
syn match   verilogGlobal      "`remove_\w\+"
syn match   verilogGlobal      "`restore_\w\+"

syn match   verilogGlobal      "`[a-zA-Z0-9_]\+\>"

syn match   verilogNumber      "\<[0-9][0-9_\.]\=\([fpnum]\|\)s\>"
syn match   verilogNumber      "\<[0-9][0-9_\.]\=step\>"

syn match  verilogMethod       "\.atobin"
syn match  verilogMethod       "\.atohex\>"
syn match  verilogMethod       "\.atoi\>"
syn match  verilogMethod       "\.atooct\>"
syn match  verilogMethod       "\.atoreal\>"
syn match  verilogMethod       "\.bintoa\>"
syn match  verilogMethod       "\.hextoa\>"
syn match  verilogMethod       "\.itoa\>"
syn match  verilogMethod       "\.octtoa\>"
syn match  verilogMethod       "\.realtoa\>"
syn match  verilogMethod       "\.len\>"
syn match  verilogMethod       "\.getc\>"
syn match  verilogMethod       "\.putc\>"
syn match  verilogMethod       "\.toupper\>"
syn match  verilogMethod       "\.tolower\>"
syn match  verilogMethod       "\.compare\>"
syn match  verilogMethod       "\.icompare\>"
syn match  verilogMethod       "\.substr\>"
syn match  verilogMethod       "\.num\>"
syn match  verilogMethod       "\.exists\>"
syn match  verilogMethod       "\.first\>"
syn match  verilogMethod       "\.last\>"
syn match  verilogMethod       "\.name\>"
syn match  verilogMethod       "\.index\>"
syn match  verilogMethod       "\.find\>"
syn match  verilogMethod       "\.find_first\>"
syn match  verilogMethod       "\.find_last\>"
syn match  verilogMethod       "\.find_index\>"
syn match  verilogMethod       "\.find_first_index\>"
syn match  verilogMethod       "\.find_last_index\>"
syn match  verilogMethod       "\.min\>"
syn match  verilogMethod       "\.max\>"
syn match  verilogMethod       "\.unique\>"
syn match  verilogMethod       "\.unique_index\>"
syn match  verilogMethod       "\.sort\>"
syn match  verilogMethod       "\.rsort\>"
syn match  verilogMethod       "\.shuffle\>"
syn match  verilogMethod       "\.reverse\>"
syn match  verilogMethod       "\.sum\>"
syn match  verilogMethod       "\.product\>"
syn match  verilogMethod       "\.xor\>"
syn match  verilogMethod       "\.status\>"
syn match  verilogMethod       "\.kill\>"
syn match  verilogMethod       "\.self\>"
syn match  verilogMethod       "\.await\>"
syn match  verilogMethod       "\.suspend\>"
syn match  verilogMethod       "\.resume\>"
syn match  verilogMethod       "\.get\>"
syn match  verilogMethod       "\.put\>"
syn match  verilogMethod       "\.peek\>"
syn match  verilogMethod       "\.try_get\>"
syn match  verilogMethod       "\.try_peek\>"
syn match  verilogMethod       "\.try_put\>"
syn match  verilogMethod       "\.data\>"
syn match  verilogMethod       "\.eq\>"
syn match  verilogMethod       "\.neq\>"
syn match  verilogMethod       "\.next\>"
syn match  verilogMethod       "\.prev\>"
syn match  verilogMethod       "\.new\>"
syn match  verilogMethod       "\.size\>"
syn match  verilogMethod       "\.delete\>"
syn match  verilogMethod       "\.empty\>"
syn match  verilogMethod       "\.pop_front\>"
syn match  verilogMethod       "\.pop_back\>"
syn match  verilogMethod       "\.push_front\>"
syn match  verilogMethod       "\.push_back\>"
syn match  verilogMethod       "\.front\>"
syn match  verilogMethod       "\.back\>"
syn match  verilogMethod       "\.insert\>"
syn match  verilogMethod       "\.insert_range\>"
syn match  verilogMethod       "\.erase\>"
syn match  verilogMethod       "\.erase_range\>"
syn match  verilogMethod       "\.set\>"
syn match  verilogMethod       "\.swap\>"
syn match  verilogMethod       "\.clear\>"
syn match  verilogMethod       "\.purge\>"
syn match  verilogMethod       "\.start\>"
syn match  verilogMethod       "\.finish\>"

"            \s\+\<\w\+\>\s*;"
syn match   verilogAssertion   "\<\w\+\>\s*:\s*\<assert\s\+property\>\s\+(\w\+)\_\s*else"
syn match   verilogAssertion   "\s*\<property\>\s*\w\+;"

syn match   vmmType     "vmm_[a-zA-Z0-9_]\+\>"
" syn match   tlmType     "tlm_[a-zA-Z0-9_]\+\>"
" syn match   urmType     "urm_[a-zA-Z0-9_]\+\>"
syn match   ovmType     "ovm_[a-zA-Z0-9_]\+\>"
syn match   uvmType     "uvm_[a-zA-Z0-9_]\+\>"
syn match   uvcType     "uvc_[a-zA-Z0-9_]\+\>"
syn match   verilogType "\[$\]\>"

syn keyword verilogTodo     TODO FIXME

syn match   verilogOperator "[&|~><!)(*#%@+/=?:;}{,.\^\-\[\]]"

syn region  verilogComment start="/\*" end="\*/" contains=verilogTodo
syn match   verilogComment "//.*" contains=verilogTodo

syn match verilogGlobal "`[a-zA-Z0-9_]\+\>"
syn match verilogGlobal "`celldefine"
syn match verilogGlobal "`default_nettype"
syn match verilogGlobal "`define"
syn match verilogGlobal "`else"
syn match verilogGlobal "`elsif"
syn match verilogGlobal "`endcelldefine"
syn match verilogGlobal "`endif"
syn match verilogGlobal "`ifdef"
syn match verilogGlobal "`ifndef"
syn match verilogGlobal "`include"
syn match verilogGlobal "`line"
syn match verilogGlobal "`nounconnected_drive"
syn match verilogGlobal "`resetall"
syn match verilogGlobal "`timescale"
syn match verilogGlobal "`unconnected_drive"
syn match verilogGlobal "`undef"
syn match   verilogGlobal "$[a-zA-Z0-9_]\*\>"

syn match   verilogConstant "\<[A-Z][A-Z0-9_]\*\>"

syn match   verilogNumber "\(\<\d\+\|\)'[bB]\s*[0-1_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d\+\|\)'[oO]\s*[0-7_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d\+\|\)'[dD]\s*[0-9_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d\+\|\)'[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match   verilogNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"

syn region  verilogString start=+"+ skip=+\\"+ end=+"+ contains=verilogEscape
syn match   verilogEscape +\\[nt"\\]+ contained
syn match   verilogEscape "\\\o\o\=\o\=" contained

" Directives
syn match   verilogDirective   "//\s*synopsys\>.*$"
syn region  verilogDirective   start="/\*\s*synopsys\>" end="\*/"
syn region  verilogDirective   start="//\s*synopsys dc_script_begin\>" end="//\s*synopsys dc_script_end\>"

syn match   verilogDirective   "//\s*\$s\>.*$"
syn region  verilogDirective   start="/\*\s*\$s\>" end="\*/"
syn region  verilogDirective   start="//\s*\$s dc_script_begin\>" end="//\s*\$s dc_script_end\>"

"Modify the following as needed.  The trade-off is performance versus
"functionality.
syn sync lines=50
" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_verilog_syn_inits")
  if version < 508
     let did_verilog_syn_inits = 1
     command -nargs=+ HiLink hi link <args>
  else
     command -nargs=+ HiLink hi def link <args>
  endif

  " The default highlighting.
  HiLink verilogMethod          Function
  HiLink verilogTypeDef         TypeDef
  HiLink verilogAssertion       Include
  HiLink verilogCharacter       Character
  HiLink verilogConditional     Conditional
  HiLink verilogRepeat          Repeat
  HiLink verilogString          String
  HiLink verilogTodo            Todo
  HiLink verilogComment         Comment
  HiLink verilogConstant        Constant
  HiLink verilogLabel           Label
  HiLink verilogNumber          Number
  HiLink verilogOperator        Special
  HiLink verilogStatement       Type
  HiLink verilogGlobal          Define
  HiLink verilogDirective       SpecialComment
  HiLink verilogEscape          Special
  HiLink verilogType            Statement
  " HiLink tlmType              Library
  " HiLink urmType              Library
  HiLink ovmType                Library
  HiLink uvmType                Library
  HiLink uvcType                Library
  HiLink vmmType                Library

  delcommand HiLink
endif

let b:current_syntax = "verilog_systemverilog"

" vim: ts=8
if exists("loaded_matchit")
  let b:match_ignorecase=0
  let b:amizrah1=0
  let b:match_words=
    \ '\<begin\>:\<end\>,' .
    \ '\<class\>:\<endclass\>,' .
    \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
    \ '\<module\>:\<endmodule\>,' .
    \ '\<if\>:\<else\>,' .
    \ '\<function\>:\<endfunction\>,' .
    \ '`ifdef\>:`else\>:`endif\>,' .
    \ '\<task\>:\<endtask\>,' .
    \ '\<specify\>:\<endspecify\>'
endif


highlight! default link svCase none
highlight! default link svInvPre none
highlight! default link svInvSystemFunction none
