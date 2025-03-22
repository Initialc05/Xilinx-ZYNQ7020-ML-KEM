//-----------------------------------------------------------------------------
//Author             : Devin
//Date               : 2025/03/22
//Version            : v1.0
//development board  : Xilinx RK-ZYNQ7020
//Purpose            : 
//-----------------------------------------------------------------------------

`timescale 1ns/1ps

module Alg3_BitsToBytes;
    // 测试参数：总长度为 8 的整数倍
    parameter TEST_LEN = 16;
    reg [TEST_LEN - 1:0] tb_in;          // 测试输入位阵列
    wire [TEST_LEN/8 - 1:0][7:0] tb_out; // 测试输出字节数组

    // 实例化被测模块
    Alg3_BitsToBytes #(
       .LEN(TEST_LEN)
    ) uut (
       .in_bit_array(tb_in),
       .out_byte_array(tb_out)
    );

    initial begin
        // 测试用例 1：顺序置 1
        tb_in = 16'b0000_0001_0000_0010;
        #10;  // 推进仿真时间
        
        // 测试用例 2：间隔置 1
        tb_in = 16'b1010_1010_1010_1010;
        #10;
        
        $finish;  // 结束仿真
    end
endmodule
