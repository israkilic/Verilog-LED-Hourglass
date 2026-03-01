`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2026 16:11:18
// Design Name: 
// Module Name: tb_lastHomework
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


module tb_lastHomework(

    );
     wire [15:0]led;
    reg clk;
   lastHomework homework(.CLK100MHz(clk),.Led(led));
    always begin
    #5 clk=~clk;
    end
    initial begin
    clk=1'b0;
    end
endmodule

