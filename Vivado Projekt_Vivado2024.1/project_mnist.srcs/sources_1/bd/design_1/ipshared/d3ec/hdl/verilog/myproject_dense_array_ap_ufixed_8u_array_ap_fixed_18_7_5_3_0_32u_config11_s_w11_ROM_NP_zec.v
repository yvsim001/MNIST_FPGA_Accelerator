// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module myproject_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_s_w11_ROM_NP_zec (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 765;
parameter AddressWidth = 3;
parameter AddressRange = 8;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
(* rom_style = "block" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
    $readmemh("./myproject_dense_array_ap_ufixed_8u_array_ap_fixed_18_7_5_3_0_32u_config11_s_w11_ROM_NP_zec.dat", rom0);
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule

