set moduleName dense_array_array_ap_fixed_18_7_5_3_0_32u_config11_Pipeline_DataPrepare
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dense<array,array<ap_fixed<18,7,5,3,0>,32u>,config11>_Pipeline_DataPrepare}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer9_out int 48 regular {fifo 0 volatile }  }
	{ data_V_31_out int 6 regular {pointer 1}  }
	{ data_V_30_out int 6 regular {pointer 1}  }
	{ data_V_29_out int 6 regular {pointer 1}  }
	{ data_V_28_out int 6 regular {pointer 1}  }
	{ data_V_27_out int 6 regular {pointer 1}  }
	{ data_V_26_out int 6 regular {pointer 1}  }
	{ data_V_25_out int 6 regular {pointer 1}  }
	{ data_V_24_out int 6 regular {pointer 1}  }
	{ data_V_23_out int 6 regular {pointer 1}  }
	{ data_V_22_out int 6 regular {pointer 1}  }
	{ data_V_21_out int 6 regular {pointer 1}  }
	{ data_V_20_out int 6 regular {pointer 1}  }
	{ data_V_19_out int 6 regular {pointer 1}  }
	{ data_V_18_out int 6 regular {pointer 1}  }
	{ data_V_17_out int 6 regular {pointer 1}  }
	{ data_V_16_out int 6 regular {pointer 1}  }
	{ data_V_15_out int 6 regular {pointer 1}  }
	{ data_V_14_out int 6 regular {pointer 1}  }
	{ data_V_13_out int 6 regular {pointer 1}  }
	{ data_V_12_out int 6 regular {pointer 1}  }
	{ data_V_11_out int 6 regular {pointer 1}  }
	{ data_V_10_out int 6 regular {pointer 1}  }
	{ data_V_9_out int 6 regular {pointer 1}  }
	{ data_V_8_out int 6 regular {pointer 1}  }
	{ data_V_7_out int 6 regular {pointer 1}  }
	{ data_V_6_out int 6 regular {pointer 1}  }
	{ data_V_5_out int 6 regular {pointer 1}  }
	{ data_V_4_out int 6 regular {pointer 1}  }
	{ data_V_3_out int 6 regular {pointer 1}  }
	{ data_V_2_out int 6 regular {pointer 1}  }
	{ data_V_1_out int 6 regular {pointer 1}  }
	{ data_V_out int 6 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer9_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_31_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_30_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_29_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_28_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_27_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_26_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_25_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_24_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_23_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_22_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_21_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_20_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_19_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_18_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_17_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_16_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_15_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_14_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_13_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_12_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_11_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_10_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_9_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_8_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_7_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_6_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_5_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_4_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_3_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_2_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_1_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_V_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 75
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer9_out_dout sc_in sc_lv 48 signal 0 } 
	{ layer9_out_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ layer9_out_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ layer9_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer9_out_read sc_out sc_logic 1 signal 0 } 
	{ data_V_31_out sc_out sc_lv 6 signal 1 } 
	{ data_V_31_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ data_V_30_out sc_out sc_lv 6 signal 2 } 
	{ data_V_30_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ data_V_29_out sc_out sc_lv 6 signal 3 } 
	{ data_V_29_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ data_V_28_out sc_out sc_lv 6 signal 4 } 
	{ data_V_28_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ data_V_27_out sc_out sc_lv 6 signal 5 } 
	{ data_V_27_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ data_V_26_out sc_out sc_lv 6 signal 6 } 
	{ data_V_26_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ data_V_25_out sc_out sc_lv 6 signal 7 } 
	{ data_V_25_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ data_V_24_out sc_out sc_lv 6 signal 8 } 
	{ data_V_24_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ data_V_23_out sc_out sc_lv 6 signal 9 } 
	{ data_V_23_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ data_V_22_out sc_out sc_lv 6 signal 10 } 
	{ data_V_22_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ data_V_21_out sc_out sc_lv 6 signal 11 } 
	{ data_V_21_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ data_V_20_out sc_out sc_lv 6 signal 12 } 
	{ data_V_20_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ data_V_19_out sc_out sc_lv 6 signal 13 } 
	{ data_V_19_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ data_V_18_out sc_out sc_lv 6 signal 14 } 
	{ data_V_18_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ data_V_17_out sc_out sc_lv 6 signal 15 } 
	{ data_V_17_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ data_V_16_out sc_out sc_lv 6 signal 16 } 
	{ data_V_16_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ data_V_15_out sc_out sc_lv 6 signal 17 } 
	{ data_V_15_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ data_V_14_out sc_out sc_lv 6 signal 18 } 
	{ data_V_14_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ data_V_13_out sc_out sc_lv 6 signal 19 } 
	{ data_V_13_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ data_V_12_out sc_out sc_lv 6 signal 20 } 
	{ data_V_12_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ data_V_11_out sc_out sc_lv 6 signal 21 } 
	{ data_V_11_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ data_V_10_out sc_out sc_lv 6 signal 22 } 
	{ data_V_10_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ data_V_9_out sc_out sc_lv 6 signal 23 } 
	{ data_V_9_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ data_V_8_out sc_out sc_lv 6 signal 24 } 
	{ data_V_8_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ data_V_7_out sc_out sc_lv 6 signal 25 } 
	{ data_V_7_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ data_V_6_out sc_out sc_lv 6 signal 26 } 
	{ data_V_6_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ data_V_5_out sc_out sc_lv 6 signal 27 } 
	{ data_V_5_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ data_V_4_out sc_out sc_lv 6 signal 28 } 
	{ data_V_4_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ data_V_3_out sc_out sc_lv 6 signal 29 } 
	{ data_V_3_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ data_V_2_out sc_out sc_lv 6 signal 30 } 
	{ data_V_2_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ data_V_1_out sc_out sc_lv 6 signal 31 } 
	{ data_V_1_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ data_V_out sc_out sc_lv 6 signal 32 } 
	{ data_V_out_ap_vld sc_out sc_logic 1 outvld 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer9_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "layer9_out", "role": "dout" }} , 
 	{ "name": "layer9_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer9_out", "role": "num_data_valid" }} , 
 	{ "name": "layer9_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer9_out", "role": "fifo_cap" }} , 
 	{ "name": "layer9_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "empty_n" }} , 
 	{ "name": "layer9_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "read" }} , 
 	{ "name": "data_V_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_31_out", "role": "default" }} , 
 	{ "name": "data_V_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_31_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_30_out", "role": "default" }} , 
 	{ "name": "data_V_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_30_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_29_out", "role": "default" }} , 
 	{ "name": "data_V_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_29_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_28_out", "role": "default" }} , 
 	{ "name": "data_V_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_28_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_27_out", "role": "default" }} , 
 	{ "name": "data_V_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_27_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_26_out", "role": "default" }} , 
 	{ "name": "data_V_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_26_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_25_out", "role": "default" }} , 
 	{ "name": "data_V_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_25_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_24_out", "role": "default" }} , 
 	{ "name": "data_V_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_24_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_23_out", "role": "default" }} , 
 	{ "name": "data_V_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_23_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_22_out", "role": "default" }} , 
 	{ "name": "data_V_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_22_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_21_out", "role": "default" }} , 
 	{ "name": "data_V_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_21_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_20_out", "role": "default" }} , 
 	{ "name": "data_V_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_20_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_19_out", "role": "default" }} , 
 	{ "name": "data_V_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_19_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_18_out", "role": "default" }} , 
 	{ "name": "data_V_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_18_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_17_out", "role": "default" }} , 
 	{ "name": "data_V_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_17_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_16_out", "role": "default" }} , 
 	{ "name": "data_V_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_16_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_15_out", "role": "default" }} , 
 	{ "name": "data_V_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_15_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_14_out", "role": "default" }} , 
 	{ "name": "data_V_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_14_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_13_out", "role": "default" }} , 
 	{ "name": "data_V_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_13_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_12_out", "role": "default" }} , 
 	{ "name": "data_V_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_12_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_11_out", "role": "default" }} , 
 	{ "name": "data_V_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_11_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_10_out", "role": "default" }} , 
 	{ "name": "data_V_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_10_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_9_out", "role": "default" }} , 
 	{ "name": "data_V_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_9_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_8_out", "role": "default" }} , 
 	{ "name": "data_V_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_8_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_7_out", "role": "default" }} , 
 	{ "name": "data_V_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_7_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_6_out", "role": "default" }} , 
 	{ "name": "data_V_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_6_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_5_out", "role": "default" }} , 
 	{ "name": "data_V_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_5_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_4_out", "role": "default" }} , 
 	{ "name": "data_V_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_4_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_3_out", "role": "default" }} , 
 	{ "name": "data_V_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_3_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_2_out", "role": "default" }} , 
 	{ "name": "data_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_1_out", "role": "default" }} , 
 	{ "name": "data_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "data_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_V_out", "role": "default" }} , 
 	{ "name": "data_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		data_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer9_out { ap_fifo {  { layer9_out_dout fifo_port_we 0 48 }  { layer9_out_num_data_valid fifo_status_num_data_valid 0 3 }  { layer9_out_fifo_cap fifo_update 0 3 }  { layer9_out_empty_n fifo_status 0 1 }  { layer9_out_read fifo_data 1 1 } } }
	data_V_31_out { ap_vld {  { data_V_31_out out_data 1 6 }  { data_V_31_out_ap_vld out_vld 1 1 } } }
	data_V_30_out { ap_vld {  { data_V_30_out out_data 1 6 }  { data_V_30_out_ap_vld out_vld 1 1 } } }
	data_V_29_out { ap_vld {  { data_V_29_out out_data 1 6 }  { data_V_29_out_ap_vld out_vld 1 1 } } }
	data_V_28_out { ap_vld {  { data_V_28_out out_data 1 6 }  { data_V_28_out_ap_vld out_vld 1 1 } } }
	data_V_27_out { ap_vld {  { data_V_27_out out_data 1 6 }  { data_V_27_out_ap_vld out_vld 1 1 } } }
	data_V_26_out { ap_vld {  { data_V_26_out out_data 1 6 }  { data_V_26_out_ap_vld out_vld 1 1 } } }
	data_V_25_out { ap_vld {  { data_V_25_out out_data 1 6 }  { data_V_25_out_ap_vld out_vld 1 1 } } }
	data_V_24_out { ap_vld {  { data_V_24_out out_data 1 6 }  { data_V_24_out_ap_vld out_vld 1 1 } } }
	data_V_23_out { ap_vld {  { data_V_23_out out_data 1 6 }  { data_V_23_out_ap_vld out_vld 1 1 } } }
	data_V_22_out { ap_vld {  { data_V_22_out out_data 1 6 }  { data_V_22_out_ap_vld out_vld 1 1 } } }
	data_V_21_out { ap_vld {  { data_V_21_out out_data 1 6 }  { data_V_21_out_ap_vld out_vld 1 1 } } }
	data_V_20_out { ap_vld {  { data_V_20_out out_data 1 6 }  { data_V_20_out_ap_vld out_vld 1 1 } } }
	data_V_19_out { ap_vld {  { data_V_19_out out_data 1 6 }  { data_V_19_out_ap_vld out_vld 1 1 } } }
	data_V_18_out { ap_vld {  { data_V_18_out out_data 1 6 }  { data_V_18_out_ap_vld out_vld 1 1 } } }
	data_V_17_out { ap_vld {  { data_V_17_out out_data 1 6 }  { data_V_17_out_ap_vld out_vld 1 1 } } }
	data_V_16_out { ap_vld {  { data_V_16_out out_data 1 6 }  { data_V_16_out_ap_vld out_vld 1 1 } } }
	data_V_15_out { ap_vld {  { data_V_15_out out_data 1 6 }  { data_V_15_out_ap_vld out_vld 1 1 } } }
	data_V_14_out { ap_vld {  { data_V_14_out out_data 1 6 }  { data_V_14_out_ap_vld out_vld 1 1 } } }
	data_V_13_out { ap_vld {  { data_V_13_out out_data 1 6 }  { data_V_13_out_ap_vld out_vld 1 1 } } }
	data_V_12_out { ap_vld {  { data_V_12_out out_data 1 6 }  { data_V_12_out_ap_vld out_vld 1 1 } } }
	data_V_11_out { ap_vld {  { data_V_11_out out_data 1 6 }  { data_V_11_out_ap_vld out_vld 1 1 } } }
	data_V_10_out { ap_vld {  { data_V_10_out out_data 1 6 }  { data_V_10_out_ap_vld out_vld 1 1 } } }
	data_V_9_out { ap_vld {  { data_V_9_out out_data 1 6 }  { data_V_9_out_ap_vld out_vld 1 1 } } }
	data_V_8_out { ap_vld {  { data_V_8_out out_data 1 6 }  { data_V_8_out_ap_vld out_vld 1 1 } } }
	data_V_7_out { ap_vld {  { data_V_7_out out_data 1 6 }  { data_V_7_out_ap_vld out_vld 1 1 } } }
	data_V_6_out { ap_vld {  { data_V_6_out out_data 1 6 }  { data_V_6_out_ap_vld out_vld 1 1 } } }
	data_V_5_out { ap_vld {  { data_V_5_out out_data 1 6 }  { data_V_5_out_ap_vld out_vld 1 1 } } }
	data_V_4_out { ap_vld {  { data_V_4_out out_data 1 6 }  { data_V_4_out_ap_vld out_vld 1 1 } } }
	data_V_3_out { ap_vld {  { data_V_3_out out_data 1 6 }  { data_V_3_out_ap_vld out_vld 1 1 } } }
	data_V_2_out { ap_vld {  { data_V_2_out out_data 1 6 }  { data_V_2_out_ap_vld out_vld 1 1 } } }
	data_V_1_out { ap_vld {  { data_V_1_out out_data 1 6 }  { data_V_1_out_ap_vld out_vld 1 1 } } }
	data_V_out { ap_vld {  { data_V_out out_data 1 6 }  { data_V_out_ap_vld out_vld 1 1 } } }
}
