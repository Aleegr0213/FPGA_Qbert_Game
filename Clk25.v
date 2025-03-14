module Clk25(clk_50, clk_25);

input clk_50;
output reg clk_25;
reg[0:1]cont;

always@(posedge (clk_50)) begin
	cont = cont + 1;
	if (cont == 1) begin
		clk_25 = clk_25 ^ 1;
		cont= 0;
		end
	end
endmodule 