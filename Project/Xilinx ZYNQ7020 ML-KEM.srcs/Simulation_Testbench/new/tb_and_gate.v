//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2025 06:40:29 PM
// Design Name: 
// Module Name: tb_and_gate
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

module tb_and_gate;
    // 定义信号
    reg a;
    reg b;
    wire y;

    // 实例化被测试模块
    and_gate uut (
       .a(a), 
       .b(b), 
       .y(y)
    );

    initial begin
        // 初始化输入信号
        a = 0;
        b = 0;

        // 等待一段时间
        #10;
        a = 0;
        b = 1;

        #10;
        a = 1;
        b = 0;

        #10;
        a = 1;
        b = 1;

        #10;
        $finish;
    end
      
    initial begin
        $monitor("Time: %0t, a = %b, b = %b, y = %b", $time, a, b, y);
    end

endmodule
