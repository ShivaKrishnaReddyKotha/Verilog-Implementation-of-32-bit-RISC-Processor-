`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:10 05/03/2021 
// Design Name: 
// Module Name:    accumlator 
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
module accumlator( input clk,rst,input [31:0] data_in, output reg[31:0] data_out 
    );


always @(posedge clk)
begin
     if(rst)
	     data_out<=32'd0;
		  
		else
       data_out<=data_in + data_out;		

end 




endmodule
