////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2004 Xilinx, Inc.
// All Rights Reserved
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: v1.30
//  \   \         Application : KCPSM3
//  /   /         Filename: random.v
// /___/   /\     
// \   \  /  \
//  \___\/\___\
//
//Command: kcpsm3 random.psm
//Device: Spartan-3, Spartan-3E, Virtex-II, and Virtex-II Pro FPGAs
//Design Name: random
//Generated 2018-12-22T14:19:59.
//Purpose:
//	random verilog program definition.
//
//Reference:
//	PicoBlaze 8-bit Embedded Microcontroller User Guide
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1ps

module random (address, instruction, clk);

input [9:0] address;
input clk;

output [17:0] instruction;

RAMB16_S18 ram_1024_x_18(
	.DI 	(16'h0000),
	.DIP 	(2'b00),
	.EN	(1'b1),
	.WE	(1'b0),
	.SSR	(1'b0),
	.CLK	(clk),
	.ADDR	(address),
	.DO	(instruction[15:0]),
	.DOP	(instruction[17:16]))
/*synthesis 
init_00 = "0C0E0C0E19A01CA0400654012FC754012FC74FFF40061CC01CC0CAFF000C0A34" 
init_01 = "40010A34A000DA9058184B078B0109060B000A0EA901F9C00C0EF9C00C0EF9C0" 
init_02 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_03 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_04 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_05 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_06 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_07 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_08 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_09 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_0A = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_0B = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_0C = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_0D = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_0E = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_0F = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_10 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_11 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_12 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_13 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_14 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_15 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_16 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_17 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_18 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_19 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_1A = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_1B = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_1C = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_1D = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_1E = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_1F = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_20 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_21 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_22 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_23 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_24 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_25 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_26 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_27 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_28 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_29 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_2A = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_2B = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_2C = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_2D = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_2E = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_2F = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_30 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_31 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_32 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_33 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_34 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_35 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_36 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_37 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_38 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_39 = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_3A = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_3B = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_3C = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_3D = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_3E = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
init_3F = "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E" 
initp_00 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D62088A0F74C2C" 
initp_01 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" 
initp_02 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" 
initp_03 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" 
initp_04 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" 
initp_05 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" 
initp_06 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" 
initp_07 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" */;

// synthesis translate_off
// Attributes for Simulation
defparam ram_1024_x_18.INIT_00  = 256'h0C0E0C0E19A01CA0400654012FC754012FC74FFF40061CC01CC0CAFF000C0A34;
defparam ram_1024_x_18.INIT_01  = 256'h40010A34A000DA9058184B078B0109060B000A0EA901F9C00C0EF9C00C0EF9C0;
defparam ram_1024_x_18.INIT_02  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_03  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_04  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_05  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_06  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_07  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_08  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_09  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_0A  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_0B  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_0C  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_0D  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_0E  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_0F  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_10  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_11  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_12  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_13  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_14  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_15  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_16  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_17  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_18  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_19  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_1A  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_1B  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_1C  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_1D  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_1E  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_1F  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_20  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_21  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_22  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_23  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_24  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_25  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_26  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_27  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_28  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_29  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_2A  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_2B  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_2C  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_2D  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_2E  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_2F  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_30  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_31  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_32  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_33  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_34  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_35  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_36  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_37  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_38  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_39  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_3A  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_3B  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_3C  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_3D  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_3E  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INIT_3F  = 256'h401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E;
defparam ram_1024_x_18.INITP_00 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D62088A0F74C2C;
defparam ram_1024_x_18.INITP_01 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_1024_x_18.INITP_02 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_1024_x_18.INITP_03 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_1024_x_18.INITP_04 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_1024_x_18.INITP_05 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_1024_x_18.INITP_06 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_1024_x_18.INITP_07 = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

// synthesis translate_on
// Attributes for XST (Synplicity attributes are in-line)
// synthesis attribute INIT_00  of ram_1024_x_18 is "0C0E0C0E19A01CA0400654012FC754012FC74FFF40061CC01CC0CAFF000C0A34"
// synthesis attribute INIT_01  of ram_1024_x_18 is "40010A34A000DA9058184B078B0109060B000A0EA901F9C00C0EF9C00C0EF9C0"
// synthesis attribute INIT_02  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_03  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_04  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_05  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_06  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_07  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_08  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_09  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_0A  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_0B  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_0C  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_0D  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_0E  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_0F  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_10  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_11  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_12  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_13  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_14  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_15  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_16  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_17  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_18  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_19  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_1A  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_1B  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_1C  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_1D  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_1E  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_1F  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_20  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_21  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_22  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_23  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_24  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_25  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_26  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_27  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_28  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_29  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_2A  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_2B  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_2C  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_2D  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_2E  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_2F  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_30  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_31  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_32  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_33  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_34  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_35  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_36  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_37  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_38  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_39  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_3A  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_3B  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_3C  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_3D  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_3E  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INIT_3F  of ram_1024_x_18 is "401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E401E"
// synthesis attribute INITP_00 of ram_1024_x_18 is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D62088A0F74C2C"
// synthesis attribute INITP_01 of ram_1024_x_18 is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
// synthesis attribute INITP_02 of ram_1024_x_18 is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
// synthesis attribute INITP_03 of ram_1024_x_18 is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
// synthesis attribute INITP_04 of ram_1024_x_18 is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
// synthesis attribute INITP_05 of ram_1024_x_18 is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
// synthesis attribute INITP_06 of ram_1024_x_18 is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
// synthesis attribute INITP_07 of ram_1024_x_18 is "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

endmodule

// END OF FILE random.v