# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name layer9_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_layer9_out \
    op interface \
    ports { layer9_out_dout { I 48 vector } layer9_out_num_data_valid { I 3 vector } layer9_out_fifo_cap { I 3 vector } layer9_out_empty_n { I 1 bit } layer9_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name data_V_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_31_out \
    op interface \
    ports { data_V_31_out { O 6 vector } data_V_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name data_V_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_30_out \
    op interface \
    ports { data_V_30_out { O 6 vector } data_V_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name data_V_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_29_out \
    op interface \
    ports { data_V_29_out { O 6 vector } data_V_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name data_V_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_28_out \
    op interface \
    ports { data_V_28_out { O 6 vector } data_V_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name data_V_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_27_out \
    op interface \
    ports { data_V_27_out { O 6 vector } data_V_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name data_V_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_26_out \
    op interface \
    ports { data_V_26_out { O 6 vector } data_V_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name data_V_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_25_out \
    op interface \
    ports { data_V_25_out { O 6 vector } data_V_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name data_V_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_24_out \
    op interface \
    ports { data_V_24_out { O 6 vector } data_V_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name data_V_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_23_out \
    op interface \
    ports { data_V_23_out { O 6 vector } data_V_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name data_V_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_22_out \
    op interface \
    ports { data_V_22_out { O 6 vector } data_V_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name data_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_21_out \
    op interface \
    ports { data_V_21_out { O 6 vector } data_V_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name data_V_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_20_out \
    op interface \
    ports { data_V_20_out { O 6 vector } data_V_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name data_V_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_19_out \
    op interface \
    ports { data_V_19_out { O 6 vector } data_V_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name data_V_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_18_out \
    op interface \
    ports { data_V_18_out { O 6 vector } data_V_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name data_V_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_17_out \
    op interface \
    ports { data_V_17_out { O 6 vector } data_V_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name data_V_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_16_out \
    op interface \
    ports { data_V_16_out { O 6 vector } data_V_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name data_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_15_out \
    op interface \
    ports { data_V_15_out { O 6 vector } data_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name data_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_14_out \
    op interface \
    ports { data_V_14_out { O 6 vector } data_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name data_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_13_out \
    op interface \
    ports { data_V_13_out { O 6 vector } data_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name data_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_12_out \
    op interface \
    ports { data_V_12_out { O 6 vector } data_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name data_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_11_out \
    op interface \
    ports { data_V_11_out { O 6 vector } data_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name data_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_10_out \
    op interface \
    ports { data_V_10_out { O 6 vector } data_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name data_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_9_out \
    op interface \
    ports { data_V_9_out { O 6 vector } data_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name data_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_8_out \
    op interface \
    ports { data_V_8_out { O 6 vector } data_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name data_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_7_out \
    op interface \
    ports { data_V_7_out { O 6 vector } data_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name data_V_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_6_out \
    op interface \
    ports { data_V_6_out { O 6 vector } data_V_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name data_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_5_out \
    op interface \
    ports { data_V_5_out { O 6 vector } data_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name data_V_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_4_out \
    op interface \
    ports { data_V_4_out { O 6 vector } data_V_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name data_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_3_out \
    op interface \
    ports { data_V_3_out { O 6 vector } data_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name data_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_2_out \
    op interface \
    ports { data_V_2_out { O 6 vector } data_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name data_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_1_out \
    op interface \
    ports { data_V_1_out { O 6 vector } data_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name data_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_out \
    op interface \
    ports { data_V_out { O 6 vector } data_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName myproject_flow_control_loop_pipe_sequential_init_U
set CompName myproject_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix myproject_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


