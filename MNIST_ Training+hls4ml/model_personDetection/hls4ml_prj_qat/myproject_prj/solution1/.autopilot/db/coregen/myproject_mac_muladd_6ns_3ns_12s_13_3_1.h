// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __myproject_mac_muladd_6ns_3ns_12s_13_3_1__HH__
#define __myproject_mac_muladd_6ns_3ns_12s_13_3_1__HH__
#include "myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(myproject_mac_muladd_6ns_3ns_12s_13_3_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2 myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U;

    SC_CTOR(myproject_mac_muladd_6ns_3ns_12s_13_3_1):  myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U ("myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U") {
        myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U.clk(clk);
        myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U.rst(reset);
        myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U.ce(ce);
        myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U.in0(din0);
        myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U.in1(din1);
        myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U.in2(din2);
        myproject_mac_muladd_6ns_3ns_12s_13_3_1_DSP48_2_U.dout(dout);

    }

};

#endif //
