`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:25 07/10/2020 
// Design Name: 
// Module Name:    bfulladd 
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
module bfulladd(
    input a,
    input b,
    input cin,
    output reg s,
    output reg cout
    );
	 always @ (a or b or cin) begin
	      if (a==1'b0 && b==1'b0 && cin==1'b0) begin
			     s=1'b0;
				  cout=1'b0;
			end
		   else if (a==1'b1 && b==1'b1 && cin==1'b1) begin
			     s=1'b1;
				  cout=1'b1;
			end
			else if (a==1'b0) begin
			      if (b==1'b1 && cin==1'b1) begin
					    s=1'b0;
						 cout=1'b1;
					end 
					else begin 
					    s=1'b1;
						 cout=1'b0;
					end
			end
			else if (a==1'b1) begin
			      if (b==1'b0 && cin==1'b0) begin
					    s=1'b1;
						 cout=1'b0;
					end 
					else begin 
					    s=1'b0;
						 cout=1'b1;
					end
			end
end


			
			
			


endmodule
