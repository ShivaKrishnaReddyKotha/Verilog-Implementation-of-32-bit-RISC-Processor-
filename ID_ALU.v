`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:47:50 05/02/2021 
// Design Name: 
// Module Name:    ID_ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ID_ALU(
    input [31:0] a,b,
	 input [3:0]instruction_in,
    input clk,
    input rst,
    output reg[31:0] alu_out
    );

 

	 
always @(posedge clk)
begin
    if(rst)
	    	 begin
			    
               alu_out <=4'b0000;					
			 
			 end
	 else
	  begin    
	          case(instruction_in)
	         
				4'b0001: alu_out <=a+b;
				
				4'b0010: alu_out <=a-b;
				4'b0011: alu_out <=a*b;
				4'b0100: alu_out <=a&b;
				
				4'b0101: alu_out <=a|b;
				4'b0110: alu_out <=a^b;
				4'b0111: alu_out <=a; // store 
				4'b1000: alu_out <=a+32'd55; //constant value
				4'b1001: alu_out <=alu_out<<3;
			endcase	
	  
	  end
	 
	 
end	 







endmodule
