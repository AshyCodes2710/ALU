`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 22:25:25
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

reg [2:0] A, B;
reg [2:0] sel;
wire [2:0] Y;

alu uut(A,B,sel,Y);

initial begin

$dumpfile("alu.vcd");
$dumpvars(0, alu_tb);

A = 3'b101; B = 3'b010;

sel = 3'b000; #1;
sel = 3'b001; #1;
sel = 3'b010; #1;
sel = 3'b011; #1;
sel = 3'b100; #1;
sel = 3'b101; #1;
sel = 3'b110; #1;
sel = 3'b111; #1;

$finish;

end

endmodule
