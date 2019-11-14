`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 09:06:39 PM
// Design Name: 
// Module Name: Data_Memory_testbench
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


module Data_Memory_testbench(

    );
    
    parameter BITSIZE = 64;
    
    reg [BITSIZE - 1:0] address, writeData;
    reg memWrite, memRead;
    reg clk, rst;
    
    wire [BITSIZE-1:0] readData;
    
    Data_Memory DM (.address(address), .writeData(writeData), .memWrite(memWrite), .memRead(memRead), .clk(clk), .rst(rst), .readData(readData)  );
    
    initial
    begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial 
        begin
            rst <= 0; address <= 64'b1; writeData <= 64'b11; memWrite <= 0; memRead <= 0;
            #10 memWrite <= 1;
            #10 memRead <= 1;
            #10 rst <= 1;
             
        
        end
    
    
endmodule
