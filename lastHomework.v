`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2026 16:08:32
// Design Name: 
// Module Name: lastHomework
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


module lastHomework(
input CLK100MHz,
output reg[15:0]Led
    );
    localparam fullRight=16'b0000000011111111;
    localparam R7L1=16'b1000000011111110;
    localparam R6L2=16'b1100000011111100;
    localparam R5L3=16'b1110000011111000;
    localparam R4L4=16'b1111000011110000;
    localparam R3L5=16'b1111100011100000;
    localparam R2L6=16'b1111110011000000;
    localparam R1L7=16'b1111111010000000;
    localparam fullLeft=16'b1111111100000000;
    localparam L7R1=16'b0111111100000001;
    localparam L6R2=16'b0011111100000011;
    localparam L5R3=16'b0001111100000111;
    localparam L4R4=16'b0000111100001111;
    localparam L3R5=16'b0000011100011111;
    localparam L2R6=16'b0000001100111111;
    localparam L1R7=16'b0000000101111111;
    reg [15:0]nextLeds;
    initial begin
    Led=fullLeft;
    end
    always@*begin
    case(Led)
    fullRight:nextLeds=R7L1;
    R7L1:nextLeds=R6L2;
    R6L2:nextLeds=R5L3;
    R5L3:nextLeds=R4L4;
    R4L4:nextLeds=R3L5;
    R3L5:nextLeds=R2L6;
    R2L6:nextLeds=R1L7;
    R1L7:nextLeds=fullLeft;
    fullLeft:nextLeds=L7R1;
    L7R1:nextLeds=L6R2;
    L6R2:nextLeds=L5R3;
    L5R3:nextLeds=L4R4;
    L4R4:nextLeds=L3R5;
    L3R5:nextLeds=L2R6;
    L2R6:nextLeds=L1R7;
    L1R7:nextLeds=fullRight;
    default: nextLeds = fullRight;
    endcase 
    end
    reg clk=1'b0;
    always@(posedge clk)begin
    Led<=nextLeds;
    end
    reg[25:0]counter=26'd25_000_000;
    always@(posedge CLK100MHz)begin
    counter<=counter+1'b1;
    if(counter>=26'd4)
    begin clk<=~clk;
    counter<=26'd0;
    end 
    end 
    
    
    
    
    
    
    
    
    
    
    
    

   
endmodule
