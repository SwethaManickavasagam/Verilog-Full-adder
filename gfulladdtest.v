`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:58:15 07/10/2020
// Design Name:   gfulladd
// Module Name:   D:/gfulladd.v/gfulladdtest.v
// Project Name:  gfulladd.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gfulladd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gfulladdtest;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	gfulladd uut (
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

