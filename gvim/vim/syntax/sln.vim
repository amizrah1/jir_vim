" Language:	SLN
" Maintainer:	
" Last Update: Tue Mar 31  2015

"---------------------------------------------------------
" Remove any old syntax stuff hanging around
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the E syntax to start with
if version < 600
  so <sfile>:p:h/specman.vim
else
  runtime! syntax/specman.vim
  unlet b:current_syntax
endif
syn include @C syntax/c.vim

" gilp: perspec start code: ab <<< <'
ab <<< <'
" gilp: perspec end code: ab >>> '>
ab >>> '>

" gilp: added comments /* ... */
syn region Comment start="/\*" end="\*/"

syn keyword slnDefine DVE no_collect pointer set runtime gentime instance_id proc_tag get_symbol on off
syn keyword slnDefine longuint
syn match slnStatement "#trace_table"
syn match slnStatement "#message"
syn match slnStatement "#emit"
syn match slnStatement "#var"
syn match slnStatement "#wait_condition"
syn match slnStatement "#exit_reset"
syn match slnStatement "#exit_freeze"
syn match slnStatement "#call"
syn match slnStatement "#nb_call"
syn match slnStatement "#define"
syn match slnStatement "#ifdef"
syn match slnStatement "#ifndef"
syn match slnStatement "#wait"
syn match slnStatement "#event"
syn match slnStatement "#include"
syn match slnStatement "#assign"
syn keyword slnStatement empty channel memory child definition body header declaration macro abstract run_start run_end file platform share function get_all_actions add_action get_type_name get_type_by_name schedule_before
syn keyword slnStatement c_file_name const any end enabled processor conditional exclusive static shared disable pool resource buffer state stream output input
syn keyword slnSpecial assign_processor_logic assign_processor_logic_no_lock

syn keyword slnSpecial SLN_LOW SLN_HIGH

syn match   slnSpecial "};"
syn match   slnSpecial "{"
syn match   slnSpecial "}"
syn match   slnSpecial "\["
syn match   slnSpecial "\]"
syn match   slnSpecial "("
syn match   slnSpecial ")"
"syn match   slnSpecial "#:"
"syn match   slnSpecial "#;"
syn match   slnSpecial "::"
syn match   slnSpecial "<'"
syn match   slnSpecial "'>"
syn match   slnSpecial "<\[\]>"
syn match   slnSpecial "\sC\s"
syn match   slnSpecial "\sSV\s"

" weights (.w0, .w1, ... ) e.g. for select_consistent:
syn match   slnSpecial ".w\d*\s"

"syn region  slnExec start='#:'hs=s+2 end='#;'he=e-2 contains=slnString, specmanComment contains=@C
syn region  slnExec transparent start='SV\s*#:'hs=s+2 end='#;'he=e-2
"syn region  slnExec transparent start='C\s*#:'hs=s+2 end='#;'he=e-2 contains=@C, slnString
syn region  slnExec transparent start='C\s*#:'hs=s+2 end='#;'he=e-2 contains=slnString, slnDefine, slnStatement, slnSpecial, slnMethod, slnPreCondit, slnConstraint, @C
"syn keyword slnString empty 
"syn region  slnString start='<\[\]>' end='$'
syn region  slnString start='<(' end=')>' end='$'
""syn region  slnString start='>' end=':' end='$'
syn region  slnString start='<#' end='>' end='$'
"syn region  slnString start='\[<' end='>\]' end='$'
"syn region  slnString  start='#emit' end='$'
"syn region  slnString  start='#var' end='$'
"syn region  slnString  start='#wait_condition' end='$'
""syn region  slnString  start='#message' end='$'
"syn region  slnString  start='#yield' end='$'
"syn region  slnString  start='#exit_reset' end='$'
"syn region  slnString  start='#exit_freeze' end='$'
"syn region  slnString  start='#call' end='$'
"syn region  slnString  start='#nb_call' end='$'
" gilp: removed this one, since coverage has "constraint A -> B;" lines...
"syn region  slnString start='>' end=':' end='$'

syn keyword slnMethod allocate post_allocate pre_gen_code post_gen_code test_table_condition pre_gen_test_table post_gen_test_table pre_gen_test_tables post_gen_test_tables pre_gen_test_table_instance post_gen_test_table_instance post_solve post_expansion exec pre_exec on_generated pre_sample sln_thread ps_thread
syn keyword slnMethod print operator action abs_scenario abs_action rf_manager generated ended token table compound activity sln construct_nested embed_nested final post_create solve pre_solve method permute  sln_executable ps_executable
syn keyword slnMethod set_mbox_protocol rand get_all_batch_actions select_multiset select_multiset_consistent replicate_foreach_comp foreach filter_inconsistent
syn keyword slnMethod get_all_batch_components get_active_processors get_all_processors serial select_multiset_consistent_weighted filter_illegal
syn keyword slnMethod chain serial get_all_sub_action_nodes post_solve_act parallel plan as_is run_serial do_while select_consistent_parallel 
syn keyword slnMethod run_dipatcher resource_partition resource_partition_repeat repeat_on_comps try group select select_consistent select_subset well_nested reset random_sequence random_stress random_schedule random_repeat
syn keyword slnMethod choose_multiset_legal choose_multiset choose_legal_same_time choose_legal mode schedule sequence repeat replicate solve_barrier operator_flavor fill
syn keyword slnMethod do_on_proc do_on_procs soft_parallel repeat_until repeated_user_action main_user_action branch weight post_process_patch
syn keyword slnMethod perspec beta doc interesting hidden tooltip
syn keyword slnMethod comp runtime_if runtime_replicate run runtime_while runtime_repeat runtime_do_while pack_fill all_unique all_different
syn keyword slnMethod str_join str_split str_split_all str_sub str_match str_replace str_insensitive str_chop str_empty str_exactly
syn keyword slnMethod str_len str_pad str_insensitive str_expand_dots str_lower str_upper str_insensitive 
syn keyword slnMethod init union intersect diff add
"syn keyword slnPreCondit   #wait #event #message MIN_UINT MAX_UINT

syn keyword slnPreCondit   MIN_UINT MAX_UINT
"syn keyword slnPreCondit   #wait #event #message 
syn match slnPreCondit "#error"

syn keyword slnConditional switch
"syn keyword slnRepeat      table


syn keyword slnStructure   component
syn keyword slnConstraint  constraint bind each line in get_all_sub_actions get_sub_actions get_all_ranges

if version >= 508 || !exists("did_sln_syn_inits")
  if version < 508
    let did_sln_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  " The default methods for highlighting.  Can be overridden later
	HiLink	slnConditional	Conditional
	HiLink	slnConstraint	Conditional
	HiLink	slnRepeat		Repeat
	HiLink	slnString		String
	HiLink	slnExec		SpecialComment
	HiLink	slnConstant		Macro
	HiLink	slnNumber		Number
	HiLink	slnCompare		Operator
	HiLink	slnDirective		Statement
	HiLink	slnOperator		Operator
	HiLink	slnLogical		Operator
	HiLink	slnStatement	Statement
	HiLink	slnHDL		SpecialChar
	HiLink	slnMethod		Function
	HiLink	slnInclude		Include
	HiLink	slnStructure	Structure
	HiLink	slnBoolean		Boolean
	HiLink	slnFSM		Label
	HiLink	slnSpecial		Special
	HiLink	slnType		Type
	HiLink	slnComment		Comment
	HiLink	slnTemporal		Type
	HiLink	slnFile		Include
	HiLink	slnPreCondit	Include
	HiLink	slnDefine		Typedef
	HiLink	slnLabel		Label
	HiLink	slnPacking		keyword
	HiLink	slnTodo		Todo
	HiLink	slnParenError	Error
	HiLink	slnErrInParen	Error
	HiLink	slnErrInBracket	Error
	delcommand	HiLink
endif

let b:current_syntax = "sln"
