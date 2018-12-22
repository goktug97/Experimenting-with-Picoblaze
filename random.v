/////////////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: v1.00
//  \   \         Application : KCPSM4
//  /   /         Filename: random.v
// /___/   /\     
// \   \  /  \
//  \___\/\___\
//
// Command: KCPSM4 random.psm
// Device: Spartan-3 Generation, Virtex-II(Pro), and Virtex-4 FPGAs
// Design Name: random
// Purpose: random verilog program definition.
//
//
// Generated by KCPSM4 Assembler 2018-12-22T11:19:58. 
//
// Note that 'page_select' should be tied to the appropriate 'page' output from 
// the KCPSM4 macro. In the normal case of program requiring only a single BRAM 
// the 'page_select' input may also be permanently tied Low in the design. 
//
// Reference: PicoBlaze 8-bit Embedded Microcontroller User Guide
//
/////////////////////////////////////////////////////////////////////////////////////////
//
// NOTICE:
//
// Copyright Xilinx, Inc. 2007.   This code may be contain portions patented by other 
// third parties.  By providing this core as one possible implementation of a standard,
// Xilinx is making no representation that the provided implementation of this standard 
// is free from any claims of infringement by any third party.  Xilinx expressly 
// disclaims any warranty with respect to the adequacy of the implementation, including 
// but not limited to any warranty or representation that the implementation is free 
// from claims of any third party.  Furthermore, Xilinx is providing this core as a 
// courtesy to you and suggests that you contact all third parties to obtain the 
// necessary rights to use this implementation.
//
/////////////////////////////////////////////////////////////////////////////////////////
//


`timescale 1 ps / 1ps

module random (

input 	[9:0] 	address,
input		clk,
output 	[17:0] 	instruction );

RAMB16_S18 	#(
	.INIT_00(256'h0C0EF9C00C0EF9C00C0E0C0E19A01CA0400454012FC74F004004CAFF00080A34),
	.INIT_01(256'h401A401A401A401A40010A34A000DA9058144B078B0109060B000A0EA901F9C0),	
	.INIT_02(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_03(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_04(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_05(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_06(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_07(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_08(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_09(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_0A(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_0B(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_0C(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_0D(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_0E(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_0F(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_10(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_11(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_12(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_13(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_14(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_15(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_16(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_17(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_18(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_19(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_1A(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_1B(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_1C(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_1D(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_1E(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_1F(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_20(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_21(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_22(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_23(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_24(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_25(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_26(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_27(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_28(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_29(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_2A(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_2B(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_2C(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_2D(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_2E(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_2F(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_30(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_31(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_32(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_33(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_34(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_35(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_36(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_37(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_38(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_39(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_3A(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_3B(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_3C(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_3D(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_3E(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),	
	.INIT_3F(256'h401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A401A),
	.INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D62088A0F4EC),
	.INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
	.INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),	
	.INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),	
	.INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),	
	.INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),	
	.INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),	
	.INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
ram_1024_x_18(
	.DI   	(16'h0000),
	.DIP  	(2'b00),
	.EN   	(1'b1),
	.WE   	(1'b0),
	.SSR  	(1'b0),
	.CLK  	(clk),
	.ADDR 	(address),
	.DO   	(instruction[15:0]),
	.DOP  	(instruction[17:16])) ;

endmodule

// END OF FILE random.v