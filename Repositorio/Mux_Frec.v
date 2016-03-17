`timescale 1ns / 1ps

module Mux_Frec(
    input [7:0] f,//8 frecuencias
    input [2:0] selec,//3 selectores
    output reg z
    );

always @* 
	begin
		case (selec)
		3'b000: z = f[0];
		3'b001: z = f[1];
		3'b010: z = f[2];
		3'b011: z = f[3];
		3'b100: z = f[4];
		3'b101: z = f[5];
		3'b110: z = f[6];
		3'b111: z = f[7];
		default:z = f[0];
		endcase
	end
endmodule  