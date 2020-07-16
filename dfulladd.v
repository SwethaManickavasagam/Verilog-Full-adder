`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:10 07/10/2020 
// Design Name: 
// Module Name:    dfulladd 
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
module dfulladd(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
	 assign s=(a^b)^cin;
	 assign cout=(a&b)|(b&cin)|(cin&a);


endmodule
