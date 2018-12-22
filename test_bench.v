`timescale 1 ps / 1ps

module vernam_tb ();

reg clk;
wire out;

vernam vernam_module (
  .clk(clk),
  .out(out)
);

initial clk = 0;

always begin
  #5 clk = ~clk;
end

always begin
  #10 $display(out);
end

endmodule
