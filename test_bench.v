`timescale 1 ps / 1ps

module vernam_tb ();

reg clk;

vernam vernam_module (
  .clk(clk)
);

initial clk = 0;

always begin
  #10000 clk = ~clk;
end

endmodule
