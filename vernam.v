`timescale 1 ps / 1ps

module vernam (
  input clk
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
wire [7:0] ram_input;
wire [7:0] ram_enable;
wire [7:0] ram_write_enable;
wire [7:0] ram_address;
blk_mem_gen_v7_3 ram (
  .clka(clk),
  .ena(ram_enable),
  .wea(ram_write_enable),
  .addra(ram_address),
  .dina(ram_input),
  .douta(ram_output)
);

// MUX 
wire mux_select;
wire [7:0] mux_input_0;
wire [7:0] mux_input_1;
wire [7:0] mux_output;
MUX mux (
  .sel(mux_select),
  .in0(mux_input_0),
  .in1(mux_input_1),
  .out(mux_output)
);

// Picoblaze 1 Interrupt D Flip Flop
wire pb1_interrupt_dff_d;
wire pb1_interrupt_dff_q;
wire pb1_interrupt_dff_set;
wire pb1_interrupt_dff_reset;

DFF_1 pb1_interrupt_dff (
  .D(pb1_interrupt_dff_d),
  .Q(pb1_interrupt_dff_q),
  .set(pb1_interrupt_dff_set),
  .reset(pb1_interrupt_dff_reset),
  .clk(clk)
);

// Picoblaze 2 Interrupt D Flip Flop
wire pb2_interrupt_dff_d;
wire pb2_interrupt_dff_q;
wire pb2_interrupt_dff_set;
wire pb2_interrupt_dff_reset;

DFF_1 pb2_interrupt_dff (
  .D(pb2_interrupt_dff_d),
  .Q(pb2_interrupt_dff_q),
  .set(pb2_interrupt_dff_set),
  .reset(pb2_interrupt_dff_reset),
  .clk(clk)
);

// Picoblaze 1 Output D Flip Flop
wire [7:0] pb1_output_dff_d;
wire [7:0] pb1_output_dff_q;
wire pb1_output_dff_en;

DFF_2 pb1_output_dff (
  .D(pb1_output_dff_d),
  .Q(pb1_output_dff_q),
  .enable(pb1_output_dff_en),
  .clk(clk)
);

// Picoblaze 2 Output D Flip Flop
wire [7:0] pb2_output_dff_d;
wire [7:0] pb2_output_dff_q;
wire pb2_output_dff_en;

DFF_2 pb2_output_dff (
  .D(pb2_output_dff_d),
  .Q(pb2_output_dff_q),
  .enable(pb2_output_dff_en),
  .clk(clk)
);

//WIRING

assign pb1_interrupt_dff_d = 1;
assign pb1_interrupt_dff_set = pb2_write_strobe & pb2_port_id[0];
assign pb1_interrupt_dff_reset = pb1_interrupt_ack;
assign pb1_interrupt = pb1_interrupt_dff_q;

assign ram_address = pb1_port_id[0];
assign ram_enable = pb1_port_id[1];
assign ram_write_enable = pb1_port_id[2];

assign pb1_output_dff_d = pb1_out_port;
assign pb1_output_dff_en = pb1_port_id[3] & pb1_write_strobe;
assign ram_input = pb1_output_dff_q;

assign pb2_output_dff_d = pb2_out_port;
assign pb2_output_dff_en = pb2_write_strobe & pb2_port_id[0];
assign mux_input_0 = pb2_output_dff_q;
assign mux_input_1 = ram_output;
assign pb1_in_port = mux_output;
assign mux_select = pb1_port_id[7];

assign pb2_interrupt_dff_set = pb1_write_strobe & pb1_port_id[3];
assign pb2_interrupt_dff_d = 1;
assign pb2_interrupt = pb2_interrupt_dff_q;
assign pb2_interrupt_dff_reset = pb2_interrupt_ack;

endmodule

// HELPER MODULES
module MUX(
  input sel,
  input [7:0] in0,
  input [7:0] in1,
  output [7:0] out
);

assign out = sel == 0 ? in0 :
             sel == 1 ? in1 : 8'bxxxxxxxx;

endmodule

module DFF_1 (
  input D,
  output Q,
  input set,
  input reset,
  input clk
);

always @ (posedge clk) begin
  if (reset) Q <= 0;
  else if (set) Q <= D;
end

endmodule

module DFF_2 (
  input [7:0] D,
  output [7:0] Q,
  input enable,
  input clk
);

always @ (posedge clk)
  if (enable) Q <= D;

endmodule
