`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2026 21:52:30
// Design Name: 
// Module Name: alu
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


module alu(
    input [2:0] A,
    input [2:0] B,
    input [2:0] sel,
    output reg [2:0] Y
);

always @(*) begin
    case(sel)

        3'b000: Y = A + B;        // ADD

        3'b001: Y = A - B;        // SUB

        3'b010: Y = A & B;        // AND

        3'b011: Y = A | B;        // OR

        3'b100: Y = A ^ B;        // XOR

        3'b101: Y = ~(A & B);     // NAND

        3'b110: Y = ~(A | B);     // NOR

        3'b111: Y = ~A;           // NOT A

        default: Y = 3'b000;

    endcase
end

endmodule
