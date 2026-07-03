set SynModuleInfo {
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,5,5,3,0>,1u>,config18>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadTopWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadTopWidth
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe_sequential_init RTLNAME myproject_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,5,5,3,0>,1u>,config18>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadMain RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_16_5_5_3_0_1u_config18_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config18>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config18_Pipeline_PadBottomWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_1u_config18_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,5,5,3,0>,1u>,config18> MODELNAME zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_s RTLNAME myproject_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_5_5_3_0_1u_config18_s
    SUBMODULES {
      {MODELNAME myproject_regslice_both RTLNAME myproject_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME myproject_regslice_both_U}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 5, 5, 3, 0>, 1u>, config2>} MODELNAME shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_void_conv_2d_buffer_bkb RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_5_5_3_0_1u_config2_s_void_conv_2d_buffer_bkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<27,11,5,3,0>,config2_mult> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s
    SUBMODULES {
      {MODELNAME myproject_mux_94_16_1_1 RTLNAME myproject_mux_94_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_mul_16s_6s_21_3_1 RTLNAME myproject_mul_mul_16s_6s_21_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_w2_ROMdEe RTLNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_w2_ROMdEe BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_flow_control_loop_pipe_no_ap_cont RTLNAME myproject_flow_control_loop_pipe_no_ap_cont BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_no_ap_cont_U}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<27,11,5,3,0>,4u>,config2> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_27_11_5_3_0_4u_config2_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<27,11,5,3,0>,4u>,config2> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_s RTLNAME myproject_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_s}
  {SRCNAME relu<array<ap_fixed,4u>,array<ap_ufixed<6,0,4,0,0>,4u>,relu_config4> MODELNAME relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_s RTLNAME myproject_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_s
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe RTLNAME myproject_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME pooling2d_cl<array<ap_ufixed,4u>,array<ap_ufixed<6,0,4,0,0>,4u>,config5> MODELNAME pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_s RTLNAME myproject_pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_s
    SUBMODULES {
      {MODELNAME myproject_pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_s_void_peOg RTLNAME myproject_pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_config5_s_void_peOg BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_ufixed<6,0,4,0,0>,4u>,config19>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadTopWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_ufixed<6,0,4,0,0>,4u>,config19>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadMain RTLNAME myproject_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_ufixed,4u>,config19>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_ufixed_4u_config19_Pipeline_PadBottomWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_ufixed_4u_config19_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_ufixed<6,0,4,0,0>,4u>,config19> MODELNAME zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_s RTLNAME myproject_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_s}
  {SRCNAME {shift_line_buffer<array<ap_ufixed<6, 0, 4, 0, 0>, 4u>, config6>} MODELNAME shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_p_ZZN4nnet26conv_2d_ibs RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config6_s_p_ZZN4nnet26conv_2d_ibs BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<19,8,5,3,0>,config6_mult> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s
    SUBMODULES {
      {MODELNAME myproject_mux_94_6_1_1 RTLNAME myproject_mux_94_6_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_6s_6ns_12_3_1 RTLNAME myproject_mul_6s_6ns_12_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mac_muladd_6s_6ns_12s_13_3_1 RTLNAME myproject_mac_muladd_6s_6ns_12s_13_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_w6_ROMqcK RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_8_5_3_0_config6_mult_s_w6_ROMqcK BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<19,8,5,3,0>,8u>,config6> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_19_8_5_3_0_8u_config6_s}
  {SRCNAME conv_2d_cl<array<ap_ufixed,4u>,array<ap_fixed<19,8,5,3,0>,8u>,config6> MODELNAME conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_s RTLNAME myproject_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_s}
  {SRCNAME relu<array<ap_fixed,8u>,array<ap_ufixed<6,0,4,0,0>,8u>,relu_config8> MODELNAME relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_s RTLNAME myproject_relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_s}
  {SRCNAME pooling2d_cl<array<ap_ufixed,8u>,array<ap_ufixed<6,0,4,0,0>,8u>,config9> MODELNAME pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_s RTLNAME myproject_pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_s
    SUBMODULES {
      {MODELNAME myproject_pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_s_void_prcU RTLNAME myproject_pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_config9_s_void_prcU BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array,array<ap_fixed<18,7,5,3,0>,32u>,config11>_Pipeline_DataPrepare MODELNAME dense_array_array_ap_fixed_18_7_5_3_0_32u_config11_Pipeline_DataPrepare RTLNAME myproject_dense_array_array_ap_fixed_18_7_5_3_0_32u_config11_Pipeline_DataPrepare}
  {SRCNAME dense<array<ap_ufixed,8u>,array<ap_fixed<18,7,5,3,0>,32u>,config11> MODELNAME dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_s RTLNAME myproject_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_s
    SUBMODULES {
      {MODELNAME myproject_mux_83_6_1_1 RTLNAME myproject_mux_83_6_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mac_muladd_6ns_3ns_12s_13_3_1 RTLNAME myproject_mac_muladd_6ns_3ns_12s_13_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_s_w11_ROM_NP_zec RTLNAME myproject_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_s_w11_ROM_NP_zec BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME normalize<array<ap_fixed,32u>,array<ap_fixed<35,13,5,3,0>,32u>,config13> MODELNAME normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config13_s RTLNAME myproject_normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config13_s
    SUBMODULES {
      {MODELNAME myproject_mul_18s_16ns_33_2_1 RTLNAME myproject_mul_18s_16ns_33_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME relu<array<ap_fixed,32u>,array<ap_ufixed<6,0,4,0,0>,32u>,relu_config14> MODELNAME relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14_s RTLNAME myproject_relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14_s}
  {SRCNAME dense<array<ap_ufixed,32u>,array<ap_fixed<16,5,0,0,0>,10u>,config15> MODELNAME dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_s RTLNAME myproject_dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_s
    SUBMODULES {
      {MODELNAME myproject_mux_164_6_1_1 RTLNAME myproject_mux_164_6_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_s_w15_ROM_NPAem RTLNAME myproject_dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_s_w15_ROM_NPAem BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME linear<array,array<ap_fixed<16,5,5,3,0>,10u>,linear_config16> MODELNAME linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_s RTLNAME myproject_linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_s}
  {SRCNAME softmax_stable<array,array<ap_fixed<16,5,5,3,0>,10u>,softmax_config17> MODELNAME softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s RTLNAME myproject_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s
    SUBMODULES {
      {MODELNAME myproject_mul_18s_17ns_25_2_1 RTLNAME myproject_mul_18s_17ns_25_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME myproject_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_exp_tabBew RTLNAME myproject_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_exp_tabBew BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_invert_CeG RTLNAME myproject_softmax_stable_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s_invert_CeG BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME softmax<array,array<ap_fixed<16,5,5,3,0>,10u>,softmax_config17> MODELNAME softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s RTLNAME myproject_softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w16_d100_A RTLNAME myproject_fifo_w16_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer18_out_U}
      {MODELNAME myproject_fifo_w108_d64_A RTLNAME myproject_fifo_w108_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME myproject_fifo_w24_d64_A RTLNAME myproject_fifo_w24_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME myproject_fifo_w24_d16_S RTLNAME myproject_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME myproject_fifo_w24_d36_S RTLNAME myproject_fifo_w24_d36_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer19_out_U}
      {MODELNAME myproject_fifo_w152_d16_A RTLNAME myproject_fifo_w152_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME myproject_fifo_w48_d16_S RTLNAME myproject_fifo_w48_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME myproject_fifo_w48_d4_S RTLNAME myproject_fifo_w48_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME myproject_fifo_w576_d1_S RTLNAME myproject_fifo_w576_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer11_out_U}
      {MODELNAME myproject_fifo_w1120_d1_S RTLNAME myproject_fifo_w1120_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer13_out_U}
      {MODELNAME myproject_fifo_w192_d1_S RTLNAME myproject_fifo_w192_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer14_out_U}
      {MODELNAME myproject_fifo_w160_d1_S RTLNAME myproject_fifo_w160_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer15_out_U}
      {MODELNAME myproject_fifo_w160_d1_S RTLNAME myproject_fifo_w160_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer16_out_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_27_11_5_3_0_4u_config2_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config4_U0_U}
      {MODELNAME myproject_start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_configDeQ RTLNAME myproject_start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_configDeQ BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_ufixed_6_0_4_0_0_4u_configDeQ_U}
      {MODELNAME myproject_start_for_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0 RTLNAME myproject_start_for_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_array_ap_ufixed_6_0_4_0_0_4u_config19_U0_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_19_8_5_3_0_8u_config6_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_8u_array_ap_ufixed_6_0_4_0_0_8u_relu_config8_U0_U}
      {MODELNAME myproject_start_for_pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_configEe0 RTLNAME myproject_start_for_pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_configEe0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_ap_ufixed_8u_array_ap_ufixed_6_0_4_0_0_8u_configEe0_U}
      {MODELNAME myproject_start_for_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0 RTLNAME myproject_start_for_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_U0_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config1Ffa RTLNAME myproject_start_for_normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config1Ffa BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_32u_array_ap_fixed_35_13_5_3_0_32u_config1Ffa_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14Gfk RTLNAME myproject_start_for_relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14Gfk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_32u_array_ap_ufixed_6_0_4_0_0_32u_relu_config14Gfk_U}
      {MODELNAME myproject_start_for_dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0 RTLNAME myproject_start_for_dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_ufixed_32u_array_ap_fixed_16_5_0_0_0_10u_config15_U0_U}
      {MODELNAME myproject_start_for_linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_U0 RTLNAME myproject_start_for_linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_linear_array_array_ap_fixed_16_5_5_3_0_10u_linear_config16_U0_U}
      {MODELNAME myproject_start_for_softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0 RTLNAME myproject_start_for_softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_softmax_array_array_ap_fixed_16_5_5_3_0_10u_softmax_config17_U0_U}
    }
  }
}
