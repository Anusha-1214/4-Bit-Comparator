`timescale 1ns/1ps

module comparator_4bit_tb;

    reg  [3:0] A;
    reg  [3:0] B;

    wire A_greater_B;
    wire A_equal_B;
    wire A_less_B;

    // Instantiate the 4-bit comparator
    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_greater_B(A_greater_B),
        .A_equal_B(A_equal_B),
        .A_less_B(A_less_B)
    );

    // Generate waveform
    initial begin
        $dumpfile("comparator_4bit.vcd");
        $dumpvars(0, comparator_4bit_tb);
    end

    initial begin

        $display("==========================================");
        $display("        4-BIT COMPARATOR TEST");
        $display("==========================================");

        // Test 1: A > B
        A = 4'b1010;
        B = 4'b0110;
        #10;

        $display("A=%b B=%b -> A>B=%b A=B=%b A<B=%b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 2: A < B
        A = 4'b0011;
        B = 4'b1001;
        #10;

        $display("A=%b B=%b -> A>B=%b A=B=%b A<B=%b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 3: A = B
        A = 4'b0111;
        B = 4'b0111;
        #10;

        $display("A=%b B=%b -> A>B=%b A=B=%b A<B=%b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 4: A = 0, B = 0
        A = 4'b0000;
        B = 4'b0000;
        #10;

        $display("A=%b B=%b -> A>B=%b A=B=%b A<B=%b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 5: Maximum A
        A = 4'b1111;
        B = 4'b1110;
        #10;

        $display("A=%b B=%b -> A>B=%b A=B=%b A<B=%b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 6: Maximum B
        A = 4'b1110;
        B = 4'b1111;
        #10;

        $display("A=%b B=%b -> A>B=%b A=B=%b A<B=%b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        $display("==========================================");
        $display("             TEST COMPLETE");
        $display("==========================================");

        $finish;
    end

endmodule
