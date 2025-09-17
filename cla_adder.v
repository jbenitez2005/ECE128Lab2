`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 01:54:10 PM
// Design Name: 
// Module Name: cla_adder
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


module cla_adder(
    input  [3:0] A, B,
    input CI,
    output [3:0] SUM,
    output CO
);
    wire [3:0] G = A & B;   
    wire [3:0] P = A ^ B;  
    wire [3:0] C;

    // carry look-ahead
    assign C[0] = CI;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign CO   = G[3] | (P[3] & C[3]);   

    // use 1-bit adders, feed CLA carries
    full_adder fa0(.A(A[0]), .B(B[0]), .CI(C[0]), .SUM(SUM[0]), .CO());
    full_adder fa1(.A(A[1]), .B(B[1]), .CI(C[1]), .SUM(SUM[1]), .CO());
    full_adder fa2(.A(A[2]), .B(B[2]), .CI(C[2]), .SUM(SUM[2]), .CO());
    full_adder fa3(.A(A[3]), .B(B[3]), .CI(C[3]), .SUM(SUM[3]), .CO());
    
endmodule


