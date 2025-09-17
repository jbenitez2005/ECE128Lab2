`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 01:54:10 PM
// Design Name: 
// Module Name: cla_addertb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module cla_addertb;

    // Inputs
    reg [3:0] A, B;
    reg CI;

    // Outputs
    wire [3:0] SUM;
    wire CO;

    cla_adder uut (
        .A(A),
        .B(B),
        .CI(CI),
        .SUM(SUM),
        .CO(CO)
    );

    initial begin
        // Monitor signals
        $monitor("Time=%0t | A=%b B=%b CI=%b | SUM=%b CO=%b", $time, A, B, CI, SUM, CO);

        // Apply test vectors
        A = 4'b0000; B = 4'b0000; CI = 0; #10;
        A = 4'b0001; B = 4'b0010; CI = 0; #10;
        A = 4'b0101; B = 4'b0011; CI = 1; #10;
        A = 4'b1111; B = 4'b0001; CI = 0; #10;
        A = 4'b1010; B = 4'b0101; CI = 1; #10;
        A = 4'b1111; B = 4'b1111; CI = 1; #10;

        $finish;
    end

endmodule





