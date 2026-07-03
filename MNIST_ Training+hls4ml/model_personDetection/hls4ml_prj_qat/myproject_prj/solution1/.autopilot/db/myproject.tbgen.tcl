set moduleName myproject
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_input int 16 regular {axi_s 0 volatile  { img_input Data } }  }
	{ layer17_out int 160 regular {axi_s 1 volatile  { layer17_out Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_input", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layer17_out", "interface" : "axis", "bitwidth" : 160, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ img_input_TDATA sc_in sc_lv 16 signal 0 } 
	{ layer17_out_TDATA sc_out sc_lv 160 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ img_input_TVALID sc_in sc_logic 1 invld 0 } 
	{ img_input_TREADY sc_out sc_logic 1 inacc 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ layer17_out_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer17_out_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "img_input_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_input", "role": "TDATA" }} , 
 	{ "name": "layer17_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "layer17_out", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "img_input_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "img_input", "role": "TVALID" }} , 
 	{ "name": "img_input_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "img_input", "role": "TREADY" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "layer17_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer17_out", "role": "TVALID" }} , 
 	{ "name": "layer17_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer17_out", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "9", "22", "24", "30", "37", "87", "89", "99", "235", "238", "239", "263", "264", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2198", "EstimateLatencyMax" : "2209",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0"}],
		"OutputProcess" : [
			{"ID" : "264", "Name" : "softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0"}],
		"Port" : [
			{"Name" : "img_input", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0", "Port" : "img_input"}]},
			{"Name" : "layer17_out", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0", "Port" : "layer17_out"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "sX_3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "sY_3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "pY_3"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "pX_3"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Port" : "w2"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "sY_1"}]},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "pY_1"}]},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "pX_1"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "sX_1"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_17"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_16"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_15"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_14"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_3"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_1"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "sX_2"}]},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "sY_2"}]},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "pY_2"}]},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "pX_2"}]},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Port" : "w6"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "sY"}]},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "pY"}]},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "pX"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "sX"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_13"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_12"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_11"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_10"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_9"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_8"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_7"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_6"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_5"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_4"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_3"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_1"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_7"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_6"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_5"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_4"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_3"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_1"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer"}]},
			{"Name" : "w11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0", "Port" : "w11"}]},
			{"Name" : "w15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0", "Port" : "w15"}]},
			{"Name" : "exp_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0", "Port" : "exp_table"}]},
			{"Name" : "invert_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0", "Port" : "invert_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0", "Parent" : "0", "Child" : ["2", "4", "6", "8"],
		"CDFG" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "113", "EstimateLatencyMax" : "113",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_input", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadMain_fu_34", "Port" : "img_input", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer18_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "270", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadMain_fu_34", "Port" : "layer18_out", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "2", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadTopWidth_fu_28", "Port" : "layer18_out", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config18_Pipeline_PadBottomWidth_fu_42", "Port" : "layer18_out", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadTopWidth_fu_28", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadTopWidth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer18_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer18_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadTopWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadTopWidth_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadMain_fu_34", "Parent" : "1", "Child" : ["5"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadMain",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer18_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer18_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_input", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_input_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadMain", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadMain_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config18_Pipeline_PadBottomWidth_fu_42", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_1u_config18_Pipeline_PadBottomWidth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer18_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer18_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadBottomWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config18_Pipeline_PadBottomWidth_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_U0.regslice_both_img_input_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "701", "EstimateLatencyMax" : "2201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0_U",
		"Port" : [
			{"Name" : "layer18_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "270", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer18_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "271", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "layer2_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "sX_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "sY_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "pY_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "pX_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Port" : "w2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78", "Parent" : "9", "Child" : ["11", "14"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Port" : "w2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91", "Parent" : "10", "Child" : ["12", "13"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.call_ln281_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_fu_91.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119", "Parent" : "10", "Child" : ["15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119.w2_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119.mux_94_16_1_1_U19", "Parent" : "14"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119.mul_mul_16s_6s_21_3_1_U20", "Parent" : "14"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119.mul_mul_16s_6s_21_3_1_U21", "Parent" : "14"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119.mul_mul_16s_6s_21_3_1_U22", "Parent" : "14"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119.mul_mul_16s_6s_21_3_1_U23", "Parent" : "14"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s_fu_78.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_fu_119.flow_control_loop_pipe_no_ap_cont_U", "Parent" : "14"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_U0_U",
		"Port" : [
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "271", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24"], "DependentChan" : "272", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ReLUActLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_U0.flow_control_loop_pipe_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29"],
		"CDFG" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "22",
		"StartFifo" : "start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_configDeQ_U",
		"Port" : [
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "272", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "273", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_3_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_2_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_1_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_U0.flow_control_loop_pipe_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0", "Parent" : "0", "Child" : ["31", "33", "35"],
		"CDFG" : "zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "24",
		"StartFifo" : "start_for_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0_U",
		"Port" : [
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["24"], "DependentChan" : "273", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadMain_fu_28", "Port" : "layer5_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["37"], "DependentChan" : "274", "DependentChanDepth" : "36", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_ufixed_4u_config19_Pipeline_PadBottomWidth_fu_36", "Port" : "layer19_out", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "31", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadTopWidth_fu_22", "Port" : "layer19_out", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "33", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadMain_fu_28", "Port" : "layer19_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0.grp_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadTopWidth_fu_22", "Parent" : "30", "Child" : ["32"],
		"CDFG" : "zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadTopWidth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer19_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadTopWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0.grp_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadTopWidth_fu_22.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0.grp_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadMain_fu_28", "Parent" : "30", "Child" : ["34"],
		"CDFG" : "zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadMain",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer19_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadMain", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0.grp_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadMain_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0.grp_zeropad2d_cl_array_array_ap_ufixed_4u_config19_Pipeline_PadBottomWidth_fu_36", "Parent" : "30", "Child" : ["36"],
		"CDFG" : "zeropad2d_cl_array_array_ap_ufixed_4u_config19_Pipeline_PadBottomWidth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer19_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadBottomWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0.grp_zeropad2d_cl_array_array_ap_ufixed_4u_config19_Pipeline_PadBottomWidth_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0", "Parent" : "0", "Child" : ["38"],
		"CDFG" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "253", "EstimateLatencyMax" : "865",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "30",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0_U",
		"Port" : [
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["30"], "DependentChan" : "274", "DependentChanDepth" : "36", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer19_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["87"], "DependentChan" : "275", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "layer6_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "sX_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "sY_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "pY_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "pX_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Port" : "w6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158", "Parent" : "37", "Child" : ["39", "48"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Port" : "w6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181", "Parent" : "38", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6_U", "Parent" : "39"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2_U", "Parent" : "39"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5_U", "Parent" : "39"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1_U", "Parent" : "39"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4_U", "Parent" : "39"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_fu_181.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_U", "Parent" : "39"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281", "Parent" : "38", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.w6_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mux_94_6_1_1_U92", "Parent" : "48"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mux_94_6_1_1_U93", "Parent" : "48"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mux_94_6_1_1_U94", "Parent" : "48"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mux_94_6_1_1_U95", "Parent" : "48"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U96", "Parent" : "48"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U97", "Parent" : "48"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U98", "Parent" : "48"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U99", "Parent" : "48"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U100", "Parent" : "48"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U101", "Parent" : "48"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U102", "Parent" : "48"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U103", "Parent" : "48"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U104", "Parent" : "48"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U105", "Parent" : "48"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U106", "Parent" : "48"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U107", "Parent" : "48"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U108", "Parent" : "48"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U109", "Parent" : "48"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U110", "Parent" : "48"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mul_6s_6ns_12_3_1_U111", "Parent" : "48"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U112", "Parent" : "48"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U113", "Parent" : "48"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U114", "Parent" : "48"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U115", "Parent" : "48"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U116", "Parent" : "48"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U117", "Parent" : "48"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U118", "Parent" : "48"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U119", "Parent" : "48"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U120", "Parent" : "48"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U121", "Parent" : "48"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U122", "Parent" : "48"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U123", "Parent" : "48"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U124", "Parent" : "48"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U125", "Parent" : "48"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U126", "Parent" : "48"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.mac_muladd_6s_6ns_12s_13_3_1_U127", "Parent" : "48"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s_fu_158.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_fu_281.flow_control_loop_pipe_no_ap_cont_U", "Parent" : "48"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_U0", "Parent" : "0", "Child" : ["88"],
		"CDFG" : "relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "37",
		"StartFifo" : "start_for_relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_U0_U",
		"Port" : [
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["37"], "DependentChan" : "275", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["89"], "DependentChan" : "276", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ReLUActLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_U0.flow_control_loop_pipe_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0", "Parent" : "0", "Child" : ["90", "91", "92", "93", "94", "95", "96", "97", "98"],
		"CDFG" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "87",
		"StartFifo" : "start_for_pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_configEe0_U",
		"Port" : [
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["87"], "DependentChan" : "276", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["99"], "DependentChan" : "277", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_7_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_6_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_5_U", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_4_U", "Parent" : "89"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_3_U", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_2_U", "Parent" : "89"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_1_U", "Parent" : "89"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_U", "Parent" : "89"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_U0.flow_control_loop_pipe_U", "Parent" : "89"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0", "Parent" : "0", "Child" : ["100", "101", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234"],
		"CDFG" : "dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "89",
		"StartFifo" : "start_for_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0_U",
		"Port" : [
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "277", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_dense_array_array_ap_fixed_18_7_5_3_0_32u_config11_Pipeline_DataPrepare_fu_2106", "Port" : "layer9_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "layer11_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["235"], "DependentChan" : "278", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w11", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11", "ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.w11_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.grp_dense_array_array_ap_fixed_18_7_5_3_0_32u_config11_Pipeline_DataPrepare_fu_2106", "Parent" : "99", "Child" : ["102"],
		"CDFG" : "dense_array_array_ap_fixed_18_7_5_3_0_32u_config11_Pipeline_DataPrepare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "layer9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "DataPrepare", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.grp_dense_array_array_ap_fixed_18_7_5_3_0_32u_config11_Pipeline_DataPrepare_fu_2106.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mux_83_6_1_1_U213", "Parent" : "99"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mux_83_6_1_1_U214", "Parent" : "99"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mux_83_6_1_1_U215", "Parent" : "99"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mux_83_6_1_1_U216", "Parent" : "99"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U217", "Parent" : "99"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U218", "Parent" : "99"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U219", "Parent" : "99"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U220", "Parent" : "99"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U221", "Parent" : "99"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U222", "Parent" : "99"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U223", "Parent" : "99"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U224", "Parent" : "99"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U225", "Parent" : "99"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U226", "Parent" : "99"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U227", "Parent" : "99"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U228", "Parent" : "99"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U229", "Parent" : "99"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U230", "Parent" : "99"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U231", "Parent" : "99"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U232", "Parent" : "99"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U233", "Parent" : "99"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U234", "Parent" : "99"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U235", "Parent" : "99"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U236", "Parent" : "99"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U237", "Parent" : "99"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U238", "Parent" : "99"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U239", "Parent" : "99"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U240", "Parent" : "99"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U241", "Parent" : "99"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U242", "Parent" : "99"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U243", "Parent" : "99"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U244", "Parent" : "99"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U245", "Parent" : "99"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U246", "Parent" : "99"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U247", "Parent" : "99"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U248", "Parent" : "99"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U249", "Parent" : "99"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U250", "Parent" : "99"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U251", "Parent" : "99"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U252", "Parent" : "99"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U253", "Parent" : "99"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U254", "Parent" : "99"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U255", "Parent" : "99"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U256", "Parent" : "99"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U257", "Parent" : "99"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U258", "Parent" : "99"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U259", "Parent" : "99"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U260", "Parent" : "99"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U261", "Parent" : "99"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U262", "Parent" : "99"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U263", "Parent" : "99"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U264", "Parent" : "99"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U265", "Parent" : "99"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U266", "Parent" : "99"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U267", "Parent" : "99"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U268", "Parent" : "99"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U269", "Parent" : "99"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U270", "Parent" : "99"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U271", "Parent" : "99"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U272", "Parent" : "99"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U273", "Parent" : "99"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U274", "Parent" : "99"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U275", "Parent" : "99"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U276", "Parent" : "99"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U277", "Parent" : "99"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U278", "Parent" : "99"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U279", "Parent" : "99"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mul_6s_6ns_12_3_1_U280", "Parent" : "99"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U281", "Parent" : "99"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U282", "Parent" : "99"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U283", "Parent" : "99"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U284", "Parent" : "99"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U285", "Parent" : "99"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U286", "Parent" : "99"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U287", "Parent" : "99"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U288", "Parent" : "99"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U289", "Parent" : "99"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U290", "Parent" : "99"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U291", "Parent" : "99"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U292", "Parent" : "99"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U293", "Parent" : "99"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U294", "Parent" : "99"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U295", "Parent" : "99"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U296", "Parent" : "99"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U297", "Parent" : "99"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U298", "Parent" : "99"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U299", "Parent" : "99"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U300", "Parent" : "99"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U301", "Parent" : "99"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U302", "Parent" : "99"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U303", "Parent" : "99"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U304", "Parent" : "99"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U305", "Parent" : "99"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U306", "Parent" : "99"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U307", "Parent" : "99"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U308", "Parent" : "99"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U309", "Parent" : "99"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U310", "Parent" : "99"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U311", "Parent" : "99"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U312", "Parent" : "99"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U313", "Parent" : "99"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U314", "Parent" : "99"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U315", "Parent" : "99"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U316", "Parent" : "99"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U317", "Parent" : "99"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U318", "Parent" : "99"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U319", "Parent" : "99"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U320", "Parent" : "99"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U321", "Parent" : "99"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U322", "Parent" : "99"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U323", "Parent" : "99"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U324", "Parent" : "99"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U325", "Parent" : "99"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U326", "Parent" : "99"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U327", "Parent" : "99"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U328", "Parent" : "99"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U329", "Parent" : "99"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U330", "Parent" : "99"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U331", "Parent" : "99"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U332", "Parent" : "99"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U333", "Parent" : "99"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U334", "Parent" : "99"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U335", "Parent" : "99"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U336", "Parent" : "99"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U337", "Parent" : "99"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U338", "Parent" : "99"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U339", "Parent" : "99"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U340", "Parent" : "99"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U341", "Parent" : "99"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U342", "Parent" : "99"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6s_6ns_12s_13_3_1_U343", "Parent" : "99"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0.mac_muladd_6ns_3ns_12s_13_3_1_U344", "Parent" : "99"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config13_U0", "Parent" : "0", "Child" : ["236", "237"],
		"CDFG" : "normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config13_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "99",
		"StartFifo" : "start_for_normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config1Ffa_U",
		"Port" : [
			{"Name" : "layer11_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "278", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer13_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["238"], "DependentChan" : "279", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer13_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config13_U0.mul_18s_16ns_33_2_1_U350", "Parent" : "235"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config13_U0.mul_18s_16ns_33_2_1_U351", "Parent" : "235"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "235",
		"StartFifo" : "start_for_relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14Gfk_U",
		"Port" : [
			{"Name" : "layer13_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["235"], "DependentChan" : "279", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer14_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["239"], "DependentChan" : "280", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer14_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0", "Parent" : "0", "Child" : ["240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262"],
		"CDFG" : "dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "238",
		"StartFifo" : "start_for_dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0_U",
		"Port" : [
			{"Name" : "layer14_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["238"], "DependentChan" : "280", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer15_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["263"], "DependentChan" : "281", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer15_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.w15_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mux_164_6_1_1_U357", "Parent" : "239"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mux_164_6_1_1_U358", "Parent" : "239"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U359", "Parent" : "239"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U360", "Parent" : "239"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U361", "Parent" : "239"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U362", "Parent" : "239"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U363", "Parent" : "239"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U364", "Parent" : "239"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U365", "Parent" : "239"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U366", "Parent" : "239"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U367", "Parent" : "239"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mul_6s_6ns_12_3_1_U368", "Parent" : "239"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U369", "Parent" : "239"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U370", "Parent" : "239"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U371", "Parent" : "239"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U372", "Parent" : "239"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U373", "Parent" : "239"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U374", "Parent" : "239"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U375", "Parent" : "239"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U376", "Parent" : "239"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U377", "Parent" : "239"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0.mac_muladd_6s_6ns_12s_13_3_1_U378", "Parent" : "239"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_U0", "Parent" : "0",
		"CDFG" : "linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "239",
		"StartFifo" : "start_for_linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_U0_U",
		"Port" : [
			{"Name" : "layer15_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["239"], "DependentChan" : "281", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer15_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer16_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["264"], "DependentChan" : "282", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer16_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0", "Parent" : "0", "Child" : ["265", "269"],
		"CDFG" : "softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "263",
		"StartFifo" : "start_for_softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0_U",
		"Port" : [
			{"Name" : "layer16_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["263"], "DependentChan" : "282", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_fu_26", "Port" : "layer16_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "layer17_out", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_fu_26", "Port" : "layer17_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_fu_26", "Port" : "exp_table", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "invert_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_fu_26", "Port" : "invert_table", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0.grp_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_fu_26", "Parent" : "264", "Child" : ["266", "267", "268"],
		"CDFG" : "softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer16_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "layer16_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer17_out", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer17_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "exp_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "invert_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0.grp_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_fu_26.exp_table_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0.grp_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_fu_26.invert_table_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0.grp_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_fu_26.mul_18s_17ns_25_2_1_U385", "Parent" : "265"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0.regslice_both_layer17_out_U", "Parent" : "264"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer18_out_U", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_out_U", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_out_U", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer5_out_U", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer19_out_U", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer6_out_U", "Parent" : "0"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer8_out_U", "Parent" : "0"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer9_out_U", "Parent" : "0"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer11_out_U", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer13_out_U", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer14_out_U", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer15_out_U", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer16_out_U", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0_U", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_U0_U", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_configDeQ_U", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0_U", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0_U", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_U0_U", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_configEe0_U", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config1Ffa_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14Gfk_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_U0_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		img_input {Type I LastRead 8 FirstWrite -1}
		layer17_out {Type O LastRead -1 FirstWrite 25}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_14 {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer {Type X LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_7 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_6 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_5 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_4 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer {Type X LastRead -1 FirstWrite -1}
		w11 {Type I LastRead -1 FirstWrite -1}
		w15 {Type I LastRead -1 FirstWrite -1}
		exp_table {Type I LastRead -1 FirstWrite -1}
		invert_table {Type I LastRead -1 FirstWrite -1}}
	zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_s {
		img_input {Type I LastRead 8 FirstWrite -1}
		layer18_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadTopWidth {
		layer18_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadMain {
		layer18_out {Type O LastRead -1 FirstWrite 1}
		img_input {Type I LastRead 8 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_fixed_1u_config18_Pipeline_PadBottomWidth {
		layer18_out {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_s {
		layer18_out {Type I LastRead 1 FirstWrite -1}
		layer2_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		layer2_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead 0 FirstWrite 0}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s {
		w2 {Type I LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type I LastRead 0 FirstWrite -1}}
	relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_s {
		layer2_out {Type I LastRead 1 FirstWrite -1}
		layer4_out {Type O LastRead -1 FirstWrite 3}}
	pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_s {
		layer4_out {Type I LastRead 2 FirstWrite -1}
		layer5_out {Type O LastRead -1 FirstWrite 5}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_14 {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_4u_0_line_buffer {Type X LastRead -1 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_s {
		layer5_out {Type I LastRead 4 FirstWrite -1}
		layer19_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadTopWidth {
		layer19_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadMain {
		layer19_out {Type O LastRead -1 FirstWrite 1}
		layer5_out {Type I LastRead 4 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_ufixed_4u_config19_Pipeline_PadBottomWidth {
		layer19_out {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_s {
		layer19_out {Type I LastRead 1 FirstWrite -1}
		layer6_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		layer6_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E {Type X LastRead -1 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s {
		w6 {Type I LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9 {Type I LastRead 0 FirstWrite -1}}
	relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_s {
		layer6_out {Type I LastRead 1 FirstWrite -1}
		layer8_out {Type O LastRead -1 FirstWrite 3}}
	pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_s {
		layer8_out {Type I LastRead 2 FirstWrite -1}
		layer9_out {Type O LastRead -1 FirstWrite 5}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9ap {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_7 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_6 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_5 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_4 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_ufixed_8u_0_line_buffer {Type X LastRead -1 FirstWrite -1}}
	dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_s {
		layer9_out {Type I LastRead 1 FirstWrite -1}
		layer11_out {Type O LastRead -1 FirstWrite 11}
		w11 {Type I LastRead -1 FirstWrite -1}}
	dense_array_array_ap_fixed_18_7_5_3_0_32u_config11_Pipeline_DataPrepare {
		layer9_out {Type I LastRead 1 FirstWrite -1}
		data_V_31_out {Type O LastRead -1 FirstWrite 0}
		data_V_30_out {Type O LastRead -1 FirstWrite 0}
		data_V_29_out {Type O LastRead -1 FirstWrite 0}
		data_V_28_out {Type O LastRead -1 FirstWrite 0}
		data_V_27_out {Type O LastRead -1 FirstWrite 0}
		data_V_26_out {Type O LastRead -1 FirstWrite 0}
		data_V_25_out {Type O LastRead -1 FirstWrite 0}
		data_V_24_out {Type O LastRead -1 FirstWrite 0}
		data_V_23_out {Type O LastRead -1 FirstWrite 0}
		data_V_22_out {Type O LastRead -1 FirstWrite 0}
		data_V_21_out {Type O LastRead -1 FirstWrite 0}
		data_V_20_out {Type O LastRead -1 FirstWrite 0}
		data_V_19_out {Type O LastRead -1 FirstWrite 0}
		data_V_18_out {Type O LastRead -1 FirstWrite 0}
		data_V_17_out {Type O LastRead -1 FirstWrite 0}
		data_V_16_out {Type O LastRead -1 FirstWrite 0}
		data_V_15_out {Type O LastRead -1 FirstWrite 0}
		data_V_14_out {Type O LastRead -1 FirstWrite 0}
		data_V_13_out {Type O LastRead -1 FirstWrite 0}
		data_V_12_out {Type O LastRead -1 FirstWrite 0}
		data_V_11_out {Type O LastRead -1 FirstWrite 0}
		data_V_10_out {Type O LastRead -1 FirstWrite 0}
		data_V_9_out {Type O LastRead -1 FirstWrite 0}
		data_V_8_out {Type O LastRead -1 FirstWrite 0}
		data_V_7_out {Type O LastRead -1 FirstWrite 0}
		data_V_6_out {Type O LastRead -1 FirstWrite 0}
		data_V_5_out {Type O LastRead -1 FirstWrite 0}
		data_V_4_out {Type O LastRead -1 FirstWrite 0}
		data_V_3_out {Type O LastRead -1 FirstWrite 0}
		data_V_2_out {Type O LastRead -1 FirstWrite 0}
		data_V_1_out {Type O LastRead -1 FirstWrite 0}
		data_V_out {Type O LastRead -1 FirstWrite 0}}
	normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config13_s {
		layer11_out {Type I LastRead 0 FirstWrite -1}
		layer13_out {Type O LastRead -1 FirstWrite 19}}
	relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14_s {
		layer13_out {Type I LastRead 0 FirstWrite -1}
		layer14_out {Type O LastRead -1 FirstWrite 3}}
	dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_s {
		layer14_out {Type I LastRead 2 FirstWrite -1}
		layer15_out {Type O LastRead -1 FirstWrite 9}
		w15 {Type I LastRead -1 FirstWrite -1}}
	linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_s {
		layer15_out {Type I LastRead 0 FirstWrite -1}
		layer16_out {Type O LastRead -1 FirstWrite 0}}
	softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s {
		layer16_out {Type I LastRead 0 FirstWrite -1}
		layer17_out {Type O LastRead -1 FirstWrite 25}
		exp_table {Type I LastRead -1 FirstWrite -1}
		invert_table {Type I LastRead -1 FirstWrite -1}}
	softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s {
		layer16_out {Type I LastRead 0 FirstWrite -1}
		layer17_out {Type O LastRead -1 FirstWrite 25}
		exp_table {Type I LastRead -1 FirstWrite -1}
		invert_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2198", "Max" : "2209"}
	, {"Name" : "Interval", "Min" : "702", "Max" : "2202"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_input { axis {  { img_input_TDATA in_data 0 16 }  { img_input_TVALID in_vld 0 1 }  { img_input_TREADY in_acc 1 1 } } }
	layer17_out { axis {  { layer17_out_TDATA out_data 1 160 }  { layer17_out_TVALID out_vld 1 1 }  { layer17_out_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
