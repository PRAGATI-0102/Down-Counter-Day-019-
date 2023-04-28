`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 10:42:08 AM
// Design Name: 
// Module Name: tb_down_counter
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


module tb_down_counter;

        reg clk,reset;
        wire [3:0] counter;
        
        down_counter dut(.clk(clk),.reset(reset),.counter(counter));
        
        initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
        initial
        begin
            reset = 1;
            #30;
            reset = 0;
        end    
endmodule
