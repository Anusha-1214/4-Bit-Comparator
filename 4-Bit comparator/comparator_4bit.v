`timescale 1ns/1ps

module comparator_4bit (
    input  [3:0] A,
    input  [3:0] B,
    output       A_greater_B,
    output       A_equal_B,
    output       A_less_B
);

    // 4-bit magnitude comparison
    assign A_greater_B = (A > B);
    assign A_equal_B   = (A == B);
    assign A_less_B   = (A < B);

endmodule
