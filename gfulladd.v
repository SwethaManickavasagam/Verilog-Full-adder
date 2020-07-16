`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:44 07/10/2020 
// Design Name: 
// Module Name:    gfulladd 
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
module gfulladd(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
	 wire x,y,z;
	 xor(s,a,b,cin);
	 xor(x,a,b);
	 and(y,x,cin);
	 and(z,a,b);
	 or(cout,y,z);

endmodule
