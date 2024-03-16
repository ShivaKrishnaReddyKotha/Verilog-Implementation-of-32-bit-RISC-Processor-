`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:33:27 05/03/2021 
// Design Name: 
// Module Name:    RAM 
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
module RAM(
    input clk,rst,wre,
    input [31:0]data_in,
	 input [15:0]add,
    output reg [31:0]data_out,
	 output reg done
    );



reg [31:0] ram_mem [63:0];


always @(posedge clk)
begin

       if(rst)
		    begin
	      data_out<=32'dx;
			done<=1'b0;
			end
			
       else
		     
          begin
			     
				 if(wre) //1 writing 
				  begin
             ram_mem [add] <=	data_in;	
               done<=1'b1;				 
              end 				 
			    else
				     begin
				  data_out<= ram_mem[add];

                end				  
				  
			 end 
 		
   


end 



endmodule
