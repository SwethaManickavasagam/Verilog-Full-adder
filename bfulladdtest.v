`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:39:55 07/10/2020
// Design Name:   bfulladd
// Module Name:   D:/bfulladd.v/bfulladdtest.v
// Project Name:  bfulladd.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bfulladd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bfulladdtest;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	bfulladd uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
	   $monitor("%t a=%b b=%b cin=%b s=%b cout=%b",$time,a,b,cin,s,cout);
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#10 a=1;b=1;cin=1;
		#10 a=0;cin=1;b=0;
		#10 cin=1;b=0;a=1;
		#15 a=1;b=1;cin=0;
		#10 a=0;b=1;cin=1;
		#10 a=0;b=1;cin=0;
        
		// Add stimulus here

	end
      
endmodule

