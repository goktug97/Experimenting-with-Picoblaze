`timescale 1 ps / 1ps

module vernam (
  input clk,
  output [7:0] out
);

// Picoblaze 1
wire [9:0] pb1_address;
wire [17:0] pb1_instructions;
wire [7:0] pb1_port_id;
wire [7:0] pb1_out_port;
reg [7:0] pb1_in_port;
wire pb1_write_strobe;
wire pb1_read_strobe;
wire pb1_interrupt;
wire pb1_interrupt_ack;
wire pb1_reset;

assign out = pb1_out_port;

cipher pb1_cipher (
  .address(pb1_address),
  .clk(clk),
  .instruction(pb1_instructions)
);

kcpsm3 picoblaze_1(
  .address(pb1_address),
  .instruction(pb1_instructions),
  .port_id(pb1_port_id),
  .write_strobe(pb1_write_strobe),
  .out_port(pb1_out_port),
  .read_strobe(pb1_read_strobe),
  .in_port(pb1_in_port),
  .interrupt(pb1_interrupt),
  .interrupt_ack(pb1_interrupt_ack),
  .reset(pb1_reset),
  .clk(clk)
);

// Picoblaze 2
wire [9:0] pb2_address;
wire [17:0] pb2_instructions;
wire [7:0] pb2_port_id;
wire [7:0] pb2_out_port;
wire [7:0] pb2_in_port;
wire pb2_write_strobe;
wire pb2_read_strobe;
wire pb2_interrupt;
wire pb2_interrupt_ack;
wire pb2_reset;

random pb2_random (
  .address(pb2_address),
  .clk(clk),
  .instruction(pb2_instructions)
);

assign pb2_in_port = pb1_port_id ;
kcpsm3 picoblaze_2(
  .address(pb2_address),
  .instruction(pb2_instructions),
  .port_id(pb2_port_id),
  .write_strobe(pb2_write_strobe),
  .out_port(pb2_out_port),
  .read_strobe(pb2_read_strobe),
  .in_port(pb2_in_port),
  .interrupt(pb2_interrupt),
  .interrupt_ack(pb2_interrupt_ack),
  .reset(pb2_reset),
  .clk(clk)
);

// RAM
wire [7:0] ram_output;
blk_mem_gen_v7_3 ram (
  .clka(clk),
  .ena(pb1_port_id[2]),
  .wea(pb1_port_id[1]),
  .addra(pb1_port_id[0]),
  .dina(pb1_out_port),
  .douta(ram_output)
);

// MUX 
wire [7:0] pb1_in_register;
reg [7:0] in0_register;
reg [7:0] in1_register;
reg [7:0] in2_register;
reg [7:0] in3_register;
MUX mux (
  .sel(pb1_port_id[7:6]),
  .in0(in0_register),
  .in1(in1_register),
  .in2(in2_register),
  .in3(in3_register), 
  .out(pb1_in_register)
);

/*
MUX mux (
  .sel(pb1_port_id[7:6]),
  .in0(ram_output),
  .in1(pb2_port_id),
  .in2(pb2_out_port),
  .in3(8'b00000000), 
  .out(pb1_in_register)
);
*/

always @ (posedge clk) begin
  pb1_in_port <= pb1_in_register;
  in0_register <= ram_output;
  in1_register <= pb2_port_id;
  in2_register <= pb2_out_port;
  in3_register <= 8'b00000000;
end


endmodule

module MUX(
  sel,
  in0,
  in1,
  in2,
  in3,
  out
);

input [1:0] sel;
input [7:0] in0;
input [7:0] in1;
input [7:0] in2;
input [7:0] in3;

output [7:0] out;

assign out = sel == 00 ? in0 :
             sel == 01 ? in1 :
             sel == 10 ? in2 :
             sel == 11 ? in3 : 8'bxxxxxxxx;

endmodule
